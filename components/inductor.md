[Measuring inductor saturation](http://www.vk2zay.net/article/200)

| Value [µH] | Saturation current [A] | Size [mm x mm] | DC-resistance [ohm] | Type |
|------------|--------------------|------|---------------|------|
| 10 | 1.5A -> 3.5A | 4.0x4.0 (1616) | <0.5 | LCSC C167879 <br/>Tai Tech HPC 4018NF-100M<br/>Abracon ASPI-4030S-100M-T |

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

# Common mode chokes
## Hi-speed data
* WE 744233900, 0805, 90ohm, 131nH