# Galvanic compatibility
* [The Tin Commandments: Guidelines For The Use Of Tin On Connector Contacts](https://www.ramoem.com/uploads/4/4/0/7/44075859/tin_commandments.pdf)
  * Don't mix tin and gold

# Barrel connectors
## Audio connector
### 2.5mm, phone jack female, SMD RA, 4mm between studs, 3 conductors, no switch
* CUI SJ2-25103A-SMT-TR
* Switchcraft MDSMT2BRATRX
* XKB PJ-209X-3B-SMT (JLCPCB C500083)

### 2.5mm, phone plug male, 3 conductors, no switch
* CUI SP-2533-01
* Tensility 50-00400
* Tensility 50-00406 

### 3.5mm, phone jack female, SMD RA, 6mm between studs, 3 conductors, two switches
* CUI SJ2-35863B1-SMT-TR
* Adam-Tech ASJ-106-K-G-T/R
* Amphenol 10038075-A1PLF
* JLCPCB C381135 PJ-327A0-SMT

### 3.5mm, phone plug male, 3 conductors, no switch
* Tensility 50-00396
* CUI SP-3533-01

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

## FFC
### 0.5mm pitch, 24p, bottom contact, right angle
* Amphenol F33Z-1A7Q1-E8C24
* JLCPCB C262669

Make footprint compatible to:
* GCT FFC2B35-24-G
* Hirose FH12-24S-0.5SH(55)
* Molex 5051102491

### 0.5mm pitch, 24p, top contact, right angle
#### Au-finish
* Amphenol F32Q-1A7H1-11024
* FH12A-24S-0.5SH(55) : JLCPCB C506794

#### Sn-finish
* CviLux CF20241U0R0-NH
* WE 68712414022
* AFC07-S24ECA-00 : JLCPCB C262643
