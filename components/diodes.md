# LEDs
## LED 0603
| Color | Part number | Order code | Remark |
|-------|-------------|------------|--------|
| Green | APTD1608ZGCK| 754-1805-1-ND| LCSC standard LED : C965804|
| Red | APTD1608SECK/J4-PF | Digikey 754-1802-1-ND| is an upgrade/brighter to APTD1608SECK/J3-PF |

## LED Reverse mount
| Color | Part number | Size | Remark |
|-------|-------------|------|--------|
| Red-green | Wuerth 156125RV73000 | 1206 | Alternatives (pin compatible) : Lite-On LTST-C235KGKRKT / Dialight 5977703607F | 

# Schottky
## Western components
| Max. current | Max. voltage |Package | Part number |  Properties | Sources | Remark |
|--------------|--------------|--------|-------------|-------------|---------|--------|
| 30mA       | 30V          | SOD323 | RB751 | Ct = 2.0pF<br/><=500nA leakage @ 30V | JLCPCB C154819 | very low capacitance |
| 200mA        | 40V          | SOD523 = 0603 | 1PS79SB30,115 | <=600mV @ 200mA<br/><=500nA leakage @ 25V | * BAT41 (100V)<br/>* 1PS79SB30,135<br/>* PMEG4002EB,115<br/>* 1PS79SB30YL<br/>| upgrade for BAT54 types|
| 2A           | 40V          | SMA    | B340AF-13   |  <=500mV @ 2A <br/><=200µA leakage <br/><=100pF |* B240AE-13S<br/>* B24AFC_R1_00001<br/>* SR24-AU_R1_000A1 | for non-synchronous SMPS | 
| 2A           | 100V         | SOD123F | Diodes SDM2100S1F-7 | <=830mV @2A <br/>Max leakage @ 100V : 400nA | * Rohm RB068MM100TR<br/>* Nexperia PMEG10020ELRX<br/>* Nexperia PMEG10020ELR-QX<br/>* Nexperia PMEG10020AELRX<br/>* Nexperia PMEG10020AELR-QX<br/> | rectification |

## JLCPCB Basic diodes
* SS210 : 2A/100V, SMA
* [BAT54C,215](https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Nexperia-Nexperia-BAT54C%2C215_C37704.html) : 30V/200mA, 800mV @ 100mA, 400nA leakage @ 25V, 25°C, 400µA leakage @ 30V, 100°C.
* [B5819W SL](https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Jiangsu-Changjing-Electronics-Technology-Co.%2C-Ltd.-Jiangsu-Changjing-Electronics-Technology-Co.%2C-Ltd.-B5819W-SL_C8598.html) : 1A/40V, SOD-123, 0.6V @ 1A, 6µA leakage @ 10V, 25°C, 3mA leakage at 40V, 100°C.

# Rectifier
## Low leakage, low forward current
* 1N4148WS : 100V, 150mA, SOD-323
* BAV170,215 : dual, SOT23-3, common cathode, 5nA @75V
* BC847B, CB-junction, 15nA @30V
