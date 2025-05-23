# Slide switch 
## Right-angle through-hole, SPDT
### Characteristics
* Switch function : on-on
* Current rating : 100mA
* Voltage rating DC : 12V
* Actuator length : 4mm
* Switch travel : 2mm

### Sources
* Shou Han SK12D07VG4 (JLCPCB C393937)
* C&K OS102011MA1QN1C (non-shorting)
* C&K OS102011MA1QS1C (shorting)
* E-switch EG1247
* CIT MS1247L4

### ~~Component choices~~
The problem is that the lever is very thin at the point where it enters the housing of the switch.  Tilting the lever upwards will cause it to break.  This switch can only be used in situations where the lever is constrained in a way that it cannot be tilted upwards or downwards, e.g. by using a slot cutout in the housing.  This is not the case in the current design.
* Wuerth 450404015514
* Nidec Copal CUS-12TB
* C&K PCM12SMTR (Farnell €8.98 / 10 pcs)
* C&K SK-12C0405-SG 1.5 RT
* E-switch EG1257
* G-Switch MK-12C02-G025 (JLCPCB C778186)

## Straight THT, SPDT
* JLCPCB C2939726 (shorting)
* C&K OS102011MS2QN1 (non-shorting)
* C&K OS102011MS2QS1 (shorting)
* C&K SS-12D07-VG 4 NS GA PA
* Knitter-Switch MFP 113 D (non-shorting)

## Straight THT, DPDT
* DPDT : Nidec CL-SB-22C-01
* DPDT : Wuerth 452404020202
* DPDT : JLCPCB C431542

# Rotary 
## Encoder
### Parameters
* Metal shaft
* 20mm shaft length
* actuator 6mm diameter flatted end
* M7x0.75mm thread bushing
* 24 pulses per revolution (ppr)
* with detent
* with switch
* vertical orientation
* mounting : panel & through hole

### Sources
* Bourns PEC11R-4220F-S0024
* WE 482020514001 (only 20ppr)
* CTS 11CEH20F243B
* Alps EC11E18244AU (JLCPCB C202365)

## Switch
* 16 positions
* SMD
* 7x7 size
* Real code, aka hexadecimal (a 1 bit is represented by a closed switch, 0 by an open switch)

[Digikey filter](https://www.digikey.be/en/products/filter/dip-switches/194?s=N4IgjCBcoGwJxVAYygMwIYBsDOBTANCAPZQDaIALAAxwDMdIAuoQA4AuUIAymwE4CWAOwDmIAL6EwtKohApIGHAWJkQtMAA44VWiEK0ArBQoB2GcxDtOPASPGEATAY2z5ivIRKRyhh1RMwTKwckNx8QqISICYGCNByaFgeKt7gfg4OeiBwFH5ZYDpULpJUMAa6kmAmGjKV2gh1cC4WVqE2EfYgGRQGrolKnqpggS0hIACSgmy4wri8nQC0mfHyfACuyl7kvYQIjGJRgfH8ACacCwUQwZxZbACeLLic6NgoB0A)

### Connection type 2 : Common in the middle (preferable) : better & cheaper distribution
* Farnell/Multicomp
* Wuerth 428542320816
* CUI RDS-16S-74385-SMT

### Connection type 1 : Common on the outside
* LCSC SDAR-10S
* Omron A6KS-162RF
* APEM P25SMT103

# Tactile switch
## Vertical SMD, 6.0x3.5mm
* WE 434111043826
* LCSC C520860

## Vertical SMD, 9.5mm height, 6x6mm
* Wuerth 430182095816
* C&K PTS645SL95SMTR92LFS

## RA SMD, 4.7 x (2.9 → 3.5)mm
* E-switch TL1016BAF160QG
* C&K PTS840 GMP SMTR LFS
* Panasonic EVQP7L01P
* ALPS SKSCLDE010 (JLCPCB C115362)


