# Measurements
* [Measuring inductor saturation](http://www.vk2zay.net/article/200)
* A simulation model (Rs, L, C) can be derived by measurements according to [NFC-antenna design](../circuits/NFC-antenna_design/NFC-impedance-matching.ipynb)
* Measure Q-factor with a network analyzer
  * Use the shunt method
  * Use NanoVNASaver and make it show "S21 R+jX Series"

# Selection for low losses
Use Wuerth Red-Expert Power Inductor : Losses calculator.
* f=13.56MHz
* Duty cycle = 0.5
* I<sub>L_AVG</sub> = 0.7A
* ΔI<sub>L</sub> = 0.15A
Then go to the P<sub>TOT</sub>-column and reduce maximum value until less than 100 items are left.  After that, you can sort that column from low to high to find the best inductor.

# RFC (radio frequency choke)
J.J.Carr: Secrets of RF Circuit Design :
* <10MHz : 2.5mH
* 10MHz -> 30MHz : 1mH
* 30MHz -> 100MHz : 100µH
* 100MHz -> 300MHz : 10µH
These values are not critical and are given only as guidelines. Although it might be a bit tricky to get a 1-mH RFC to operate well at 100 MHz, there is no really hard boundary for these bands.

# Signal inductor
## Air core inductor (Q > 100 @100MHz)
* Wuerth WE-CAIR
* Abracon AIAC-4125C (Mouser, Digikey)
* Bourns AC1060R (Mouser, Digikey)
* Coilcraft 2222SQ (Mouser)
* Coilcraft 132-XXSM (Mouser)
* Walsin LSQ-series (Mouser, Digikey)
* Walsin LSI-series

## 1008-size (2520 metric)
* Abracon AISC-1008
* Wuerth WE-KI 1008, WE-RFI, WE-RFH
* Murata LQW2UASR
* Laird IWC1008
* Guangdong Fenghua FHW1008UC
* Coilcraft 1008PSM

## 4.2x4.8mm, 3.56x4.95mm
* Wuerth WE-KI 4248
* Coilcraft 1812SMS
* Sunlight SCA1812H (22n -> 150nH)


# Power inductor
7x7mm is a common size for power inductors around 3A of rated current.

| Value [µH] | Saturation current [A] | Size [mm x mm] | DC-resistance [ohm] | Type |
|------------|--------------------|------|---------------|------|
| 3.3 | 4.5 | 7 x 7 x 4 | 17.2m | WE 744311330, LCSC C167219 |
| 10 | 1.5A -> 3.5A | 4.0x4.0 (1616) | <0.5 | LCSC C167879 <br/>Tai Tech HPC 4018NF-100M<br/>Abracon ASPI-4030S-100M-T |

# Ferrite beads
[Shall We Use a Ferrite Bead in Power Rail or Not? | Explained by Eric Bogatin](https://youtu.be/HaLMjVkKYMw?t=267):
  * Do not place ferrite bead in series with power supply!  Power rail droop: The voltage across the inductor (dI/dt) by switching will cause a voltage drop and every other device on that power rail will see it.  You can only do it when you place the feedback loop after the ferrite bead (WE ANP0022).  This LC-filter causes a phase shift and can cause instability.
  * Application 1 : If board is a source of noise to analog IC.  Make LC-filter to power the analog chip.
  * Application 2 : If the chip is a source of noise.  Make a CL-filter to power the noisy chip.
  * **Don't use ferrite bead above 20% to 30% of its rated current.**  It will saturate and loose its impedance.
  * Ferrite beads only work in their resistive region (turning unwanted RF energy to heat).  This is the region where resistance is maximum and inductance is minimum.
  * When using in multiple stage filters for DCDC converters, put the real inductors closest to the switching converter and ferrite beads further away (WE ANP0044).

Trilogy of inductors, section "applications" explains where to use what ferrite bead.  The older version of the book on archive.org shows which component values to use.

## Low current power rails and analog signals
* WE 742792662 : 0603, 1kOhm, 100MHz, 830mA, 300mohm
  * unsuitable for fast edges : 4.8µH at 5MHz, 3.7µH at 10MHz : this really distorts the signal
  * use on low current power rails for analog signals

## Digital signals
* Find the clock frequency of the signal and use a choke with a high CM-impedance and low DM-impedance at that frequency.

## Medium current, for power rails
* WE 742792625 : 0603, 100ohm, 100MHz, 2.0A, 50mohm
* WE 742792651 : 0603, 600ohm, 100MHz, 1.0A, 50mohm (used on [WE's Filter Stick USB2.0](https://www.we-online.com/en/components/products/EMC_FILTER_BAGS_STICKS_USB_2_0_TYPA_FILTERSTICK))

## High current, for power rails
* HI1812V101R-10 Laird
* 2518121217Y6 Fair-Rite
* JLCPCB C2894325

# Common mode chokes
## Basics
* [Parallel coupled inductors](https://www.translatorscafe.com/unit-converter/en-US/calculator/mutual-inductance-parallel/)
  * Inductance of the two coupled inductors in parallel equals the individual inductances, but you have twice the current carrying capability: [LTSpice](../circuits/CM-choke/coupledInductors.asc)
  * Inductance of two equal uncoupled inductors in parallel is half of the individual inductances.

## Hi-speed data
* WE 744232222, 1206, 2200ohm (3MHz - 300MHz)
* WE 744233900, 0805, 90ohm, 131nH, JLCPCB C54888
* WE 744232090, 1206, 90ohm, 111nH, JLCPCB C131487

## Medium current LF
250µH, 1.2A (dT=40°C), 130mOhm (per coil), 1-70MHz (Z>1Kohm)

* WE 744224 (€4.32 Sinnuss.nl)
* YJYCOIN YLCM0905C-251T (JLCPCB C5137118)
* SXN(Shun Xiang Nuo Elec) SMCM090605-251 (JLCPCB C1692755)
* Sunltech Tech SMW9050S251ZTT (JLCPCB C878358)
* PROD Tech PSCLAQ0905-251Y (JLCPCB C2829004)

## High current LF
* 12x10.8mm and 12x11mm are popular sizes
* 9x7mm is also popular

# Pulse transformers (LAN)
## non-PoE
* TDK ALT4532M-201-T001
* Wuerth 74930000, 74930030
* Pulse TC5G00, TC2G00, TC1G00
* Bourns SM453230-181N7Y

## PoE
* Bourns SM453230-231N7YP
* Pulse : TC1G00P, TC5G00P
* Abracon ALANC001G2-EADT, ALANC001G1-EADT

# Toroidal inductors
## Material
### Ferrite
Applications of ferrite cores: EMI suppression, RF transformers

* Type 43 :
  * inductors up to 1MHz (tested)
  * EMI suppression 20MHz - 250MHz (Fair-Rite data sheet)
* Type 61 :
  * inductors up to 20MHz (tested)
* Type 67 :
  * inductors up to 75MHz (tested)
* [Wire length calculator](http://www.calculatoredge.com/electronics/coilwinding.htm#toroid)
