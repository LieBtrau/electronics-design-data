# DfT
* **Test points for GND, VCC, and other important signals**
  * Easy for a fast measurement on a broken unit
* **NC-Shunts on power supplies** so that the load can easily be disconnected
  * Open shunt by cutting
  * Close shunt by adding solder drop.
* Write your hardware test plan before doing the PCB-layout.  You'll notice that you'll need features that you hadn't thought of before.
* Add **power LED** : it's always nice to know when a board is lingering on your desk whether it's powered or not.
* Add **power supply monitor** on logic voltage rail
  * Atmel MCU already have this on-chip.
  * Most other chips on your board don't.  So add a voltage monitor to make sure /RST remains low until all supply rails are ok, to avoid undefined behavior.
* Add a **reset button** (or make sure the programmer has one), otherwise you'll end up unplugging and replugging your USB-port or your programmer all the time.

# DfM
* Mounting holes
* Layer stack table
* Fab notes, see [PCB aesthetics : ordering guideline](./PCB_aesthetics.md) 

# Identification
* Board name
* Board revision
* GIT commit hash, can be placed after the board revision
* JLCPCB : QR-code window and order number