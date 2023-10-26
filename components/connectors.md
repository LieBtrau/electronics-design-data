# Wire to board

## 2.0mm pitch SMD, right angle
* Wuerth WR-WTB range : 620 1xx 131 822
* JST SxB-PH-SM4-TB(LF)(SN)
* Also from TE, CviLux and EDAC

# Modular jack
## Through hole, right angle
| Pin count | LEDs | Part number | Order number | Price | Remark |
| 8 | none | X12ADGWA3DY1027 | LCSC C2916453 | 0.47 \[€\] | Alternative : Wuerth WR-MJ 615008140621 |

# USB-C 
## 24p plug right angle
* Globtek PLUG-USBC-241SMT-TH-4BC2LS, XKB U261-241N-4BC2LS (JLCPCB C2880648)
  * Not so popular on JLCPCB
  * Pins closest to PCB edge are through hole, so they can be routed on on the inner layers.
* Globtek PLUG-USBC-241SMT-4BC2SS, XKB U261-241N-4BC2SS (JLCPCB C2938597), XUNPU TYPEC-951-ARP24 (JLCPCB C2856663)
  * Looks like it's SMT, so this wouldn't require a special fixture for straddle mounting.
  * How the heck can you route the traces to the pins closest to the PCB edge?  The pads are only 0.3mm wide, and the pins are 0.5mm apart.  Microvias will be needed..
  * More than 3 sources on JLCPCB
  