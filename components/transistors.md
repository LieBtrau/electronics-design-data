# BJT NPN
## Low voltage, low current
* BC846B : 65V/100mA, LCSC C87062, Higher Vceo and Vcbo than BC847B

# NMOS
## Depletion
* BSS169 : 100V/170mA
* BSS126 : 600V/21mA

## Enhancement
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
* BSS806NH6327XTSA1 : 20V/2.3A, 0.55V @11µA (?)

## Low voltage, high current
* DMG3414U-7 : 20V/4.2A, Vgsth: 0.9V @250µA
* AO3434A : 30V/4A, Vgsth: 2.5V @250µA
* TSM320N03CX RFG : 30V/5.5A, Vgsth: 0.9V @250µA
* [JLCPCB Basic Part](https://www.lcsc.com/product-detail/MOSFETs_Alpha-%26-Omega-Semicon-Alpha-%26-Omega-Semicon-AO3400A_C20917.html) AO3400A : 30V/5.7A, Vgsth: 1.05V @250µA

# PMOS
## Low voltage, medium current
* SI3401A : 30V/4A, Vgsth = 1.3V, Igss = 100nA
* [JLCPBC Basic Part](https://www.lcsc.com/product-detail/MOSFETs_LRC-LRC-LBSS84LT1G_C8492.html) : AO3401A : 30V/4.0A, Vgsth = -0.9V, Igss = 100nA
* DMG3401LSN
* TSM650P02CX