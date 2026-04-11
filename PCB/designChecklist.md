# KiCon design checklist
[Checklist for Schematics v2026-02-15](https://docs.google.com/document/d/1gCPILcrdGZJjRzIDSL-b3ezVReeK5S-7raeub1RohyE/edit?pli=1&tab=t.0#heading=h.gjdgxs) : http://github.com/andrewgreenberg
([Video from KiCon 2025](https://youtu.be/X0hd_v8qRiY))

# Part selection
* Avoid Au plated soldering surfaces.  Selective Sn plating is better.
* Void Ag plated soldering surfaces (e.g. on high current connectors or ceramic filters)
* Use battery holder instead of soldering batteries on the PCB.

# Footprint design
* no solder paste on test points

# Visual Design Best Practices
* Power supplies use supply symbols (not wires) with useful names
* Positive supplies point up, ground and negative supplies point down. Always.
* All important nets are descriptively named
* Functional blocks are clearly labeled (plenty of whitespace around it, or maybe even a box)
* Schematic contains a hyperlink to the design notes.  One design note per functional block.
* There's a frame around the schematic
* It's clear where your power is coming from and what the power requirements are (V/I)
* Data flow (inputs, outputs, requirements) are clear and labeled
* All connectors have text that describes what they go to
* Route wires at a consistent distance from each other and avoid crossing net wires as possible
* Groups of nets above about ≥ 4 nets collected into buses

# Schematic Symbols
* All symbols are schematic symbols, not packages (inputs on left, outputs on right, power on top and bottom)
* Pins have correct electrical rule check (ERC) direction (inputs, outputs, passives, etc)
* Components with symbolic shapes use those shapes (e.g, opamps are triangles)

# Part values
* Capacitors have the appropriate voltage (usually ≥ 2x working voltage, also see this) and specify dielectric type if necessary
* Special case capacitors marked with power and tolerance
* Power dissipation checked on all resistors
* Special case resistors marked with power and tolerance
* Layout features that are circuit elements (e.g., copper inductor) are labeled in the schematic

# Design for Fail
* Group components in separable modularly powered blocks and use zero ohm resistors or cuttable jumpers to disconnect (especially for switching power supplies!)
* Unused pins (especially GPIO) should  go to usable test points. Consider adding some random  pull-up and pull-down resistors connected to a test point on the board, too
* Consider somehow encoding your PCB hardware revision in hardware (GPIO pullups, etc)

# Circuit Gotchas
* MOSFETs oriented correctly WRT the body diode (!), with note if intentionally forward conducting
* Check that opamp inputs are not swapped.
* Check IC part numbers reflect the correct package type
* For labeled nets: Did you check all of them to make 100% sure they’re all correctly connected?  In Altium be careful when "ports naming nets" is disabled.
* Relays : free-wheeling diodes or TVS added?
* Transformers : check polarity of the windings
* Unused inputs must not be left floating, especially for digital inputs and ADC-pins.
* Small, low ESR (e.g., ceramic) bypass capacitors on all IC supplies (check datasheet for values)
* Check voltage inputs and outputs match across power domains (e.g., 5V to 3.3V)
* Check that powered-off domains are not phantom powered by their inputs from other circuits (including test circuits, like UARTs)
* Check for UART TX/RX swaps (TX to RX, RX to TX) and name with source, e.g. MCU_TX
* Check for pull-up/down resistors on open collector/drain outputs (e.g.,  I2C lines)

## Copy-paste errors
* Have you checked for ‘double names’? For example, you have a net named VCC and a net named 5V. You really intended for them to be the same net but accidentally used different names on different sheets or on the same sheet, leaving them unconnected. The same can be true for AGND, DGND, or GND. 
* Check the net names very carefully. Some PCB design packages don’t warn you if there are names that are already in use. This can lead to unwanted connections. 

# DfT
* **Test points for GND, VCC, RST and other important signals**
  * Easy for a fast measurement on a broken unit
  * Test point on reset is useful for functional testing.
  * Label these pins in silkscreen with the expected voltage (so VCC becomes +3.3V), so they can be measured without needing a schematic.
* **Test point to put firmware into production mode**
  * During the test, you might want to use the customer firmware.  By adding a test point to put the firmware into production mode, you can avoid having to reflash the firmware after each test.
* **Programming pads and bootstrap manipulation** 
  * for your MCU or SPI flash
  * USB-pads for firmware upload on MPU/CPU
* **NC-Shunts on power supplies** so that the load can easily be disconnected
  * Open shunt by cutting
  * Close shunt by adding solder drop.
* Write your hardware test plan before doing the PCB-layout.  You'll notice that you'll need features that you hadn't thought of before.
* Add **power LED** : it's always nice to know when a board is lingering on your desk whether it's powered or not.
* Add **power supply monitor** on logic voltage rail
  * Atmel MCU already have this on-chip (brown-out detection).  Be sure to enable it in the fuses.
  * Most other chips on your board don't.  So add a voltage monitor to make sure /RST remains low until all supply rails are ok, to avoid undefined behavior.
  * Some PoLs have a power-good output that can be used for this purpose.
  * You can use a peripheral reset line:
    * POR from supervisor IC connects to /RST of MCU.
    * POR connected with a diode to peripheral reset line (cathode to POR).  This way, when POR goes low, it will also pull down the peripheral reset line.
    * Connect a GPIO of the MCU to the peripheral reset line with a diode (cathode to GPIO).  This way, the MCU can reset the peripherals after it has started up.
    * Add a pull-up resistor on the peripheral reset line and on the POR line.
* Add a **reset button** (or make sure the programmer has one), otherwise you'll end up unplugging and replugging your USB-port or your programmer all the time.
* **Latchup current protection** by adding NMOS (gates to VCC, sources to the MCU, drains to debug interface pins) and add pull-up resistors on the MCU side (1K for RX input, 100K for TX output).

# EMC
* Consider over-voltage/ polarity input protection if you or your user can screw this up

# Safety
* Do you need to include fuses for protection/safety anywhere? Li-Ion needs a fuse.

# DfM
## Origin
* bottom-left corner of PCB

## Fiducials
* keep silkscreen away from fiducials
* at least 3 fiducials

## Copper balance
Fill empty areas with copper pour
* connected to GND
* stitched with vias to other layers
* far enough from high-speed signals to avoid parasitic capacitance and crosstalk

## Layer ID
* in Cu layer
* top layer = 1, inner layers = 2,3,.., bottom layer = last layer
* mirror number on bottom layer only

## Silkscreen
* Pin 1 indicator must remain visible after component placement.
* For PTH components, a component outline and reference designator on the silkscreen are recommended (because they might be placed manually).
* Label signals on connectors, especially for debugging headers or customer connectors.

## Miscellaneous
* Mounting holes
* Layer stack table
* Fab notes, see [PCB aesthetics : ordering guideline](./PCB_aesthetics.md)
* run your design through [JLCDFM](https://jlcdfm.com/) to find the weak points or even errors.

# Identification
* Board name
* Board revision
* GIT commit hash, can be placed after the board revision
* JLCPCB : 8x8mm Datamatrix-code window and order number.  Indicate this also in the fab notes, so that other fabs understand what it is (and use the provided silkscreen area)

# Almost done checklist
* All parts available or ordered (check lead times!)
* PDF of schematic created after gerbers, so that it reflects the final design
* If this is a revision, record changes to the schematic in a table or in nearby documentation

