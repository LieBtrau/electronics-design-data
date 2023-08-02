# Parameter measurement
* [Measure capacitance with DC-offset](https://www.youtube.com/watch?v=Wo7E__AifQg)
 * Alternatively, build relaxation oscillator.  As capacitor, use two caps in series.  Add a dc voltage to the interconnection of the two caps.
* ESR measurement :
    * Select test frequency f, Xc should be <1% of expected ESR at that frequency : e.g. 100kHz
    * Use function generator to apply a frequency f sine wave with a DC-offset of half the rated voltage of the capacitor.
    * First measure the peak-peak from the 50ohm output of the function generator : set it to around 1Vpp if possible  = V1
    * Then connect the capacitor-under-test to the function generator and measure peak-peak again. = V2
    * ESR = V2 * 50 / (V1-V2) -> when V2 is small compared to V1 -> ESR = V2/V1 * 50

# Ceramic
General parameters : value±10%, X7R
| Value | Voltage |Package | Part number | Remark |
|-------|---------|--------|-------------|--------| 
| 100p  |         | 0603   | | |
| 1nF   | 100V    | 0603   | | 50V more common, but 100V can replace all other 1nF caps |
| 10nF  | 100V    | 0603   | | |
| 100nF | 25V     | 0603   |  | for 10V, 0402 is more common |
| 100nF | 250V    | 1206   | | |
| 470nF | 10V     |        | | |
| 1µF   | 10V     | 0805   | CL21B105KPFNNNE | |
| 1µF   | 100V    | 1210   |                 | | 
| 10µF  | 10V     | 0805   | CL21B106KPQNFNE | |
| 10µF  | 25V     | 1210   |
| 47µF  | 10V     | 1210   | GRM32ER71A476KE15L | €0.8/pce |

# Electrolytic
## Aluminium
* high temperature

## Polymer
* high RMS current

## Aluminium Polymer
* lower ESR than Aluminium
* higher temperatures.

| Value | Voltage |Package | Part number | Remark |
|-------|---------|--------|-------------|--------| 
| 100µF | 10V     | ⌀6.3mmx8mm,SMD   | WE  | €0.3/pce |
