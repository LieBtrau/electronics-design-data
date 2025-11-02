# Mid-power BJT pairs for discrete amplifiers
## SOT89
* 1.5A/80V : 2SCR554P5T100 / 2SAR554P5T100 (?) not advertised as complementary, but parameters match
* 2A/30V : 2DD2679 / 2DB1714
* 2A/30V : 2SAR512P5T100 / 2SCR512P5T100 (?) not advertised as complementary, but parameters match
* 2A/40V : PBSS5240XF / PBSS4240XF
* 2A/50V : 2SC4672 / 2SA1797
* 2A/50V : PBSS4250X,135 / PBSS4240X
* 3A/50V : 2SAR533P5T100 / 2SCR533P5T100 (?) not advertised as complementary, but parameters match

## SOT23
* 1.5A/30V : 2SD2657 /  2SB1695 (in LTSpice), not available at JLCPCB
* 2A/40V : ZXTN4240F-7 / ZXTP5240F-7, available at LCSC
* 2A/50V : 2SCR553R / 2SAR553R (in LTSpice)
* 2.5A/80V : 2SAR544R / 2SCR544R (in LTSpice)
* 3A/40V : ZXTN25040DFH / ZXTP25040DFH

# BJT NPN
## Low voltage, low current
* S9013 J3 : 25V/500mA, LCSC C6749 (basic part, €00.013): hfe = 300 - 400
* BC846B : 65V/100mA, LCSC C87062, Higher Vceo and Vcbo than BC847B

## Low voltage, medium current (Ic <= 1A)
* S8050 (500mA) : JLCPCB Basic part
* SS8050 (1A) : JLCPCB Basic part

# BJT PNP
## Low voltage, low current
* BC856B : 65V/100mA, no direct LCSC equivalent in their Basic category.

## Low voltage, medium current (Ic <= 1A)
* S8550 (500mA) : JLCPCB Basic part
* SS8550 (1A) : JLCPCB Basic part

# NMOS
## Depletion
* BSS169 : 100V/170mA
* BSS126 : 600V/21mA

## Enhancement
### Low voltage, low current : NMOS + PMOS
#### Characteristics
* SOT-363
* Vds >= 20V
* Ids >= 500mA
* Vgsth <= 2.50V
* RdsON <= 400mOhm

#### Sources
* SI3439KDWA-TP, C99824
* SI1539CDL-T1, C141530 -> Page
* DMC3400SDW, C155499
* BSD235CH6327XTSA1, C151517

### Low voltage, low current
* FDV301N : 25V/220mA, Vgsth: 0.70V - 0.85 - 1.06 @250µA
  * Tighter Vgs tolerance than BSS138 : Vgs range +/- 15%
  * Lower Vgsth than BSS138
* BSS138 : 50V/220mA, Vgsth: 0.8 - 1.3 - 1.6V @250µA
  * Vgs range +/- 30%
* [JLCPCB Basic part 2N7002](https://lcsc.com/product-detail/MOSFETs_Jiangsu-Changjing-Electronics-Technology-Co.%2C-Ltd.-Jiangsu-Changjing-Electronics-Technology-Co.%2C-Ltd.-2N7002_C8545.html): 60V/115mA, Vgsth: 1 - 1.6 - 2.5V @250µA
  * Vgs range +/- 60%
  * Only to be used on 5V systems, on 3V3 systems the Vgs is too low to fully open the transistor, certainly at elevated temperatures.

## Low voltage, medium current
* NXV55UN : 30V/2.3A, Vgsth: 0.6V @250µA
* BSS806NH6327XTSA1 : 20V/2.3A, 0.55V @11µA (very low gate charge, use in ultra low power LED driver)

## Low voltage, high current
* [JLCPCB Basic Part](https://www.lcsc.com/product-detail/MOSFETs_Alpha-%26-Omega-Semicon-Alpha-%26-Omega-Semicon-AO3400A_C20917.html) AO3400A : 30V/5.7A, Vgsth: 1.05V @250µA
* DMG3414U-7 : 20V/4.2A, Vgsth: 0.9V @250µA
* AO3434A : 30V/4A, Vgsth: 2.5V @250µA (<€0.1/pce at LCSC)
* TSM320N03CX RFG : 30V/5.5A, Vgsth: 0.9V @250µA

# PMOS
## Low voltage, medium current
* [JLCPBC Basic Part](https://jlcpcb.com/partdetail/Alpha_OmegaSemicon-AO3401A/C15127) : AO3401A : 30V/4.0A, Vgsth = -0.9V, Igss = 100nA
* SI3401A : 30V/4A, Vgsth = 1.3V, Igss = 100nA (€0.04/pce at LCSC)
* DMP3098L
* DMG3401LSN
* TSM650P02CX