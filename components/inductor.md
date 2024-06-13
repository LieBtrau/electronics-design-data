[Measuring inductor saturation](http://www.vk2zay.net/article/200)

| Value [µH] | Saturation current [A] | Size [mm x mm] | DC-resistance [ohm] | Type |
|------------|--------------------|------|---------------|------|
| 10 | 1.5A -> 3.5A | 4.0x4.0 (1616) | <0.5 | LCSC C167879 <br/>Tai Tech HPC 4018NF-100M<br/>Abracon ASPI-4030S-100M-T |

# Inductors
## Ferrite core
* High frequency > 1MHz
* Hard saturation, inductance drops quickly
* Higher inductance values (10uH to 1mH)
* Use for : high output voltage, low output current
* Lower peak saturation current (for the same RMS current)

## Powdered Iron core
* Low frequency < 500kHz
* Soft saturation, inductance drops slowly
* Smaller inductance values (1uH to 100uH)
* Higher peak saturation current (for the same RMS current)

# Ferrite beads
[Shall We Use a Ferrite Bead in Power Rail or Not? | Explained by Eric Bogatin](https://youtu.be/HaLMjVkKYMw?t=267):
  * Do not place ferrite bead in series with power supply!  Power rail droop: The voltage across the inductor (dI/dt) by switching will cause a voltage drop and every other device on that power rail will see it.  You can only do it when you place the feedback loop after the ferrite bead (WE ANP0022).  This LC-filter causes a phase shift and can cause instability.
  * Application 1 : If board is a source of noise to analog IC.  Make LC-filter to power the analog chip.
  * Application 2 : If the chip is a source of noise.  Make a CL-filter to power the noisy chip.
  * **Don't use ferrite bead above 20% to 30% of its rated current.**  It will saturate and loose its impedance.
  * Ferrite beads only work in their resistive region (turning unwanted RF energy to heat).  This is the region where resistance is maximum and inductance is minimum.
  * When using in multiple stage filters for DCDC converters, put the real inductors closest to the switching converter and ferrite beads further away (WE ANP0044).

## Low current, for digital IO
* WE 742792662 : 0603

## Medium current, for power rails
* WE 742792625 : 0603, 100ohm, 100MHz, 1.5A, 50mohm

# Common mode chokes
## Hi-speed data
 * WE 744232222, 1206, 2200ohm (3MHz - 300MHz)
* WE 744233900, 0805, 90ohm, 131nH, JLCPCB C54888
* WE 744232090, 1206, 90ohm, 111nH, JLCPCB C131487

## Medium current LF
250µH, 1.2A (dT=40°C), 130mOhm (per coil), 1-70MHz (Z>1Kohm)

* WE 744224
* YJYCOIN YLCM0905C-251T (JLCPCB C5137118)
* SXN(Shun Xiang Nuo Elec) SMCM090605-251 (JLCPCB C1692755)
* Sunltech Tech SMW9050S251ZTT (JLCPCB C878358)
* PROD Tech PSCLAQ0905-251Y (JLCPCB C2829004)