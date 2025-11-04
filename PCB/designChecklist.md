# DfT
* **Test points for GND, VCC, RST and other important signals**
  * Easy for a fast measurement on a broken unit
  * Test point on reset is useful for functional testing.
* **Test point to put firmware into production mode**
  * During the test, you might want to use the customer firmware.  By adding a test point to put the firmware into production mode, you can avoid having to reflash the firmware after each test.
* **Programming pads** for your microcontroller or SPI flash
* **NC-Shunts on power supplies** so that the load can easily be disconnected
  * Open shunt by cutting
  * Close shunt by adding solder drop.
* Write your hardware test plan before doing the PCB-layout.  You'll notice that you'll need features that you hadn't thought of before.
* Add **power LED** : it's always nice to know when a board is lingering on your desk whether it's powered or not.
* Add **power supply monitor** on logic voltage rail
  * Atmel MCU already have this on-chip (brown-out detection).  Be sure to enable it in the fuses.
  * Most other chips on your board don't.  So add a voltage monitor to make sure /RST remains low until all supply rails are ok, to avoid undefined behavior.
  * You can use a peripheral reset line:
    * POR from supervisor IC connects to /RST of MCU.
    * POR connected with a diode to peripheral reset line (cathode to POR).  This way, when POR goes low, it will also pull down the peripheral reset line.
    * Connect a GPIO of the MCU to the peripheral reset line with a diode (cathode to GPIO).  This way, the MCU can reset the peripherals after it has started up.
    * Add a pull-up resistor on the peripheral reset line and on the POR line.
* Add a **reset button** (or make sure the programmer has one), otherwise you'll end up unplugging and replugging your USB-port or your programmer all the time.

# DfM
## Fiducials
* keep silkscreen away from fiducials
* at least 3 fiducials

## Layer ID
* in Cu layer
* top layer = 1, inner layers = 2,3,.., bottom layer = last layer
* mirror number on bottom layer only

## Silkscreen
* Pin 1 indicator must remain visible after component placement.
* For PTH components, a component outline and reference designator on the silkscreen are recommended (because they might be placed manually).

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