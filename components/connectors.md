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

# SATA
## 7p plug right angle SMT
* Molex 0470804001
* Adam-Tech SATA-A-PL-SMT-K
* HYCW02-SATA07-250B (JLCPCB C2926811)
  
# Battery holders
## 1x18650
* Avoid the [MPD BH-18650-PC](https://www.trustedparts.com/en/search/BH-18650-PC)
  * expensive
  * cheap clones melt far too easily
  * not possible to mount a temperature sensor close by
  * doesn't prevent wrong polarity insertion
## SMD
* Keystone 254TR / Myoung MY-18650-02
  * Can be SMD soldered
  * Allows for different battery lengths
  * Leaves metal connections open, so only for closed spaces.
  * Leaves more space for a temperature sensor or PTC-fuse.