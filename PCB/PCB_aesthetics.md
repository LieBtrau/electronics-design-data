* When milling is already necessary : round the PCB-corners
* Align components to grid (0.5mm)
* Try to keep things as symmetrical as possible
* Silkscreen
 * Limited use : no designators
 * Mark component polarity (diode, pin 1 of IC)
 * Do not place on bare copper (or vias)
 * Inverted text for pin labels of the connectors
 * True-Type, sans-serif Font : Century Gothic, at least 1.5mm high
 * Serial - number field (so that it can be manually filled in with a felt pen)
 * QC-field (so that it can be checked after validation testing the specific unit)

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

# Versioning
```	
.board_name
.board_revision.-.VersionControl_RevNumberShort
```

# Fabrication data
For Pb-free, at least TG155 is required.  For leaded solder, TG135 is sufficient.

```
PCB Ordering guideline
----------------------------
1. Layer count : .Layer_Count
2. Dimensions : .Board_Width x .Board_Height
3. PCB Thickness : 1.6mm
4. PCB Color : green
5. Silkscreen : white
6. Material type : FR4-TG155
7. Surface finish : ENIG
8. Gold thickness : 1U"
9. Outer copper weight : 1oz
10. Inner copper weight : 0.5oz
11. Impedance control : Yes
12. Layer stackup : JLC0616H-3313
13. Via covering : Epoxy filled & capped
14. Minimum hole size : .Hole_Size_Min
15. Board outline tolerance : +/- 0.2mm
16. Mark on PCB : 2D bardcode & Number | Data Matrix Code | .board_name _ABCDE_0001 | 8x8mm
17. Gold fingers : No
18. Castellated holes : No
19. Press-fit holes : No
20. Edge plating : No
21. Hole count : .Hole_Count
22. SMD solder joints : .PadSMD_Count
23. Through-hole solder joints : .PadThru_Count
```	