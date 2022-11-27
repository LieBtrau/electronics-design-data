# Parameter measurement
* [Measure capacitance with DC-offset](https://www.youtube.com/watch?v=Wo7E__AifQg)
* ESR measurement :
    * Select test frequency f, Xc should be <1% of expected ESR at that frequency : e.g. 100kHz
    * Use function generator to apply a frequency f sine wave with a DC-offset of half the rated voltage of the capacitor.
    * First measure the peak-peak from the 50ohm output of the function generator : set it to around 1Vpp if possible  = V1
    * Then connect the capacitor-under-test to the function generator and measure peak-peak again. = V2
    * ESR = V2 * 50 / (V1-V2) -> when V2 is small compared to V1 -> ESR = V2/V1 * 50

# Ceramic 1210
General parameters : value±10%, X7R
| Value | Voltage | Ordernr.|
|-------|---------|---------|
| 47µF  |10V      |GRM32ER71A476KE15L |
