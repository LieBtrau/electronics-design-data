#### References
* [A Primer on USB Type-C® and USB Power Delivery Applications and Requirements](https://www.ti.com/lit/wp/slyy109b/slyy109b.pdf)

#### Options
##### USB-PD 1.0 or higher (if more than 5V is needed)
* USB-PD (Power Delivery) IC needed: https://hackaday.com/2020/10/23/a-plethora-of-power-delivery-potential/
* Onsemi
    * [FUSB302](https://hackaday.io/project/176680-pd-micro-usb-c-pd30-pps-trigger)
    * [USB-PD-Breakout](https://github.com/ReclaimerLabs/USB-PD-Breakout) : source code
    * [Open-Source Firmware for ZY12PDN USB-PD](https://github.com/manuelbl/zy12pdn-oss)
    * [Notes on USB PD Triggers (And ZY12PDN Instructions)](https://www.alexwhittemore.com/notes-on-usb-pd-triggers-and-zy12pdn-instructions/)
    * [Fusb302mpx](https://jlcpcb.com/partdetail/Onsemi-Fusb302mpx/C442699)
    * [Pinecil schematic](https://files.pine64.org/doc/Pinecil/Pinecil_schematic_v2.0_20220608.pdf)
* Microchip: no solution for USB-C
* No QFN24 pin compatible solution
* Diodes : 
    * [AP33771] : QFN24
    * [AP33772] : QFN24
* Infineon
    * CYPD3177-24LQXQT : QFN24
* Rohm, TI : no solution wit 24 pins or less
* ST
    * [STUSB4500](https://hackaday.com/2021/04/21/easy-usb%E2%80%91c-power-for-all-your-devices/) : QFN24
    * [STUSB4500QTR](https://jlcpcb.com/partdetail/Stmicroelectronics-STUSB4500QTR/C2678061) : $2.1,  220pcs
* NXP
    * [PTN5110] : QFN16 2.6x2.6mm
* Richtek
    * [RT1711P]
* Injoinic
    * [IP2721](https://hackaday.io/project/173717-usb-c-pd-max-trigger-board) : TSSOP16
    
#####  UFP USB 2.0 without USB PD (5V only & ≤15 W)
* [TUSB320LAIRWBR]()
* [WUSB3801Q-12/TR]
* [NXP PTN5150A]
* [Onsemi FUSB303B]
* [Diodes PI5USB30216CXUAEX]

#### Choice
**FUSB302** : cheap, small, available, open source firmware
