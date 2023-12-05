# Measuring conducted emission
## RF Current probe
[Tekbox TBCP1 25mm RF current probe](https://eleshop.eu/tekbox-tbcp1-25mm-rf-current-probe.html):
* €321.49

### References
* [The HF Current Probe: Theory and Application](https://interferencetechnology.com/the-hf-current-probe-theory-and-application/)
* [Using current probes to estimate E-fields](https://www.edn.com/using-current-probes-to-estimate-e-fields/)

## LISN
* Use LISN with output for each phase, so that both common mode current and differential mode current can be measured using power combiners:
    * Minicircuits ZSC-2-2+ for DM mode
    * Minicircuits ZSCJ-2-2+ for CM mode

### AC LISN
* High leakage current -> isolation transformer needed to avoid tripping RCD
* Typically 50uH inductance, simulating 50m of cable

### DC LISN
* Typically 5uH inductance, simulating 5m of cable
* A metal ground plane is needed (radiatorfolie?), and the DUT should be placed at a fixed height above that ground plane to yield repeatable measurements.
* It might be needed to add a CM-filter between the LISN and the power supply to filter noise from the power supply.
* DM-impedance is 100Ω, while CM-impedance is 25Ω.  Take this in mind when simulating filters
* [A Practical Method for Separating Common-Mode and Differential-Mode Emissions in Conducted Emissions Testing](https://www.analog.com/media/en/analog-dialogue/volume-55/number-1/a-practical-method-for-separating-common-mode-and-differential-mode-emissions-in-conducted-emissions-testing.pdf)

#### Tekbox TBOH01
* [TBOH01 5uH Line Impedance Stabilisation Network LISN – CISPR 25](https://www.tekbox.com/product/tboh01-5uh-lisn-cispr-25/) : video with practical setups and tests
* [Application note Tekbox LISN](./AN_Conducted_Noise_Measurement_TekboxLISN_TBOH01_EMCview-1.pdf)
* [TBOH01 manual](./TBOH01_Manual-1.pdf)

#### Elektor DC-LISN
* [Elektor DC-LISN](https://www.elektor.com/elektor-dual-dc-lisn-150-khz-200-mhz)
* [Elektor article](https://www.elektormagazine.com/labs/dual-dc-lisn-for-emc-pre-compliance-testing-210296)

# Measuring equipment
## Spectrum analyzer
Best option

## Oscilloscope
* Require 50ohm termination
* Requires high pass filter to filter out mains frequency
