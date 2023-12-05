# EMC
[Measure power supply CM-noise with oscilloscope](https://electronics.stackexchange.com/questions/461096/is-there-a-practical-method-to-verify-whether-the-noise-have-cm-component-in-thi)
1. Use use spring clip instead of ground lead and connect them to your circuit under test.
2. Connect minus of your power supply to your circuit.  If the noise level increases, you're introducing CM-noise with your power supply.
3. See [Electronics tutorial - Filtering unwanted common mode noise from your oscilloscope measurements](https://www.youtube.com/watch?v=k-vbFcoCZ_k) on how to fix this.  Easy solution = connect short wire from scope GND (hook near cal output) and connect it to the minus of your circuit.