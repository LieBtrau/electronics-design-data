# How to mount multiple boards together?
## Why a backplane instead of stacking?
When three or more boards that share a common reference need to be connected, it's not ideal to simply stack them.  The ground reference from the top board is far away from the one on the bottom board.  Using the backplane technique, every board has a short reference connection to the backplane.  The loop area of the current loops is reduced considerably.

## Mounting PCBs parallel to the backplane or at right angles?
### PCBs mounted parallel to the backplane
Mounting all PCBs parallel to the backplane, next to each other, is the easiest route when no mounting accessories are available.  SMT pin headers can be used to provide electrical connection, while SMT board spacers provide mechanical connection (and electrical connection to the reference).

All PCBs are immediately accessible and can be swapped without having to unmount other PCBs first.

### PCBs mounted at right angles to the backplane
Making the electrical connection to the backplane can be done with right-angled pin headers and female sockets.  No issues here.  The problem lies in providing a reliable mechanical connection.  There seems to be very little right angled mounting hardware available.  There's the WE 7466303R, but it's expensive.

You generally need extra mechanical ways to fix your boards, such as card guides and front panels on 19" racks or a custom board "plate" as on edge cards that slot in PC mother boards.

# Spacer
## Coating
* Sn on brass is best
* Cr is ok
* Ni must be avoided because it doesn't provide long term contact

## Western Manufacturers:
* Wuerth
* Keystone
* InSail
* Mac8 (Comdes)
* PennEngineering (PEM)

## Eastern Manufacturers:
* LCSC Shuntian
  * Shuntian M3x10+6Cu (LCSC Part#: C551322)
  * [Shuntian M3x7+4Br](https://www.lcsc.com/product-detail/C39675863.html) : good for 1.27mm B2B with 0.8 mm thick PCBs

# Enclosures
## Extruded aluminium
size width 106 mm, height 55 mm is popular
* [length 100 mm](https://nl.aliexpress.com/item/1005007731109547.html)
* [length 150 mm](https://nl.aliexpress.com/item/1005008727122160.html)
