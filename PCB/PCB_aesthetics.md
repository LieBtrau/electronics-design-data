# Aesthetics
* When milling is already necessary : round the PCB-corners
* Align components to grid (0.5mm)
* Try to keep things as symmetrical as possible
* Silkscreen
  * Limited use : no designators
  * Mark component polarity (diode, pin 1 of IC):
    * full circle
    * width = 0.25mm
    * radius = 0.01mm
  * Do not place on bare copper (or vias)
  * Inverted text for pin labels of the connectors
  * True-Type, sans-serif Font : Century Gothic, at least 1.5mm high

 # Usability
 * Label your connectors and their pinout (+, - , GND, VCC, etc.) especially for wire-to-board connectors where this is not obvious.

 [Phil's Lab : How To Get Your PCB Manufactured & Assembled - Phil's Lab #94](https://youtu.be/PfGJDiz7-TQ?t=1540)
 * Assembly Drawings: Draftsman document with at least 4 pages:
   * 3D view top /bottom
   * Isometric view top / bottom
   * Assembly TOP 
     * Component Display Properties : 
       * Component Body : Bounding box
       * Designator : Center
     * Properties : Show silkscreen : with components (and select a proper color)
   * Assembly BOTTOM

# Labeling and versioning
* Logo
* 8x8mm silkscreen area for 2D barcode
* JLCJLCJLCJLC for JLCPCB order codes
* Serial - number field (so that it can be manually filled in with a felt pen)
* QC-field (so that it can be checked after validation testing the specific unit)
```	
.board_name
.board_revision.-.VersionControl_RevNumberShort
```

# Fabrication data"
For Pb-free, at least TG155 is required.  For Pb solder, TG135 is sufficient.

```
PCB Ordering guideline rigid
-----------------------------------------
* Layer count : .Layer_Count
* Dimensions : .Board_Width x .Board_Height
* Deburring : Yes
* PCB Thickness : .Total_Thickness
* PCB Color : green
* Silkscreen : white
* Material type : >=FR4-TG155
* Surface finish : ENIG 2U"
* Outer copper weight : 1oz
* Inner copper weight : 0.5oz
* Layer stackup
  * 1.6mm 6L : JLC06161H-3313
  * 0.8mm 6L : JLC06081H-2116
* Impedance control : No requirement
* Via covering : Epoxy filled & capped
* Minimum hole size : .Hole_Size_Min
* Board outline tolerance : +/- 0.2mm
* Mark on PCB : 2D barcode & Number | Data Matrix Code | .board_name _ABCDE_0001 | 8x8mm
* Gold fingers : No
* Castellated holes : No
* Press-fit holes : No
* Edge plating : No
* Blind slots : No
* UL Marking : No
* Hole count : .Hole_Count
* SMD solder joints : .PadSMD_Count
* Through-hole solder joints : .PadThru_Count
```	

```
PCB Ordering guideline flexible
---------------------------------------
* Base material : flex
* Substrate type : 25µm dielectric thickness
* Layers : .Layer_Count
* Dimensions : .Board_Width x .Board_Height
* PCB Thickness : 0.11mm
* Coverlay color : yellow
* Silkscreen : white
* Gold thickness : 1U"
* Outer copper weight : 1/3oz
* Coverlay thickness : PI:12.5µm, AD: 15µm
* Gold fingers : No
* Stiffener : polyimide
* Polyimide thickness : 0.20mm
* EMI Shielding film : Both sides (Black, 18µm)
* Grounding : Yes
* Cutting method : laser cutting
* Mark on PCB : Order number, specify location
* Silkscreen on stiffener : No
* Minimum hole size : .Hole_Size_Min
* Hole count : .Hole_Count
* SMD solder joints : .PadSMD_Count
* Through-hole solder joints : .PadThru_Count
```