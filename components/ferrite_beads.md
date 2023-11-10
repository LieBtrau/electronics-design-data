[Shall We Use a Ferrite Bead in Power Rail or Not? | Explained by Eric Bogatin](https://youtu.be/HaLMjVkKYMw?t=267):
  * Do not place ferrite bead in series with power supply!  Power rail droop: The voltage across the inductor (dI/dt) by switching will cause a voltage drop and every other device on that power rail will see it.
  * Application 1 : If board is a source of noise to analog IC.  Make LC-filter to power the analog chip.
  * Application 2 : If the chip is a source of noise.  Make a CL-filter to power the noisy chip.
  * Don't use ferrite bead above 20% to 30% of its rated current.  It will saturate and loose its impedance.
  * Ferrite beads only work in their resistive region (turning unwanted RF energy to heat).  This is the region where resistance is maximum and inductance is minimum.
