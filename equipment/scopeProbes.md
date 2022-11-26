The MPO720105 oscilloscope can't measure slew rate.  So the rise time is selected instead.  The voltage is measured with cursors.
BW = slew rate / ( 2 * Π * Vp) with Vp is amplitude of sine wave


| Identification | Bandwidth (specs) | Attenuation | O-scope  | Slew Rate |
|----------------|-------------------|-------------|----------|-----------|
| P6060          | 60 MHz            | 1x          | MP720105 | 3.76V/1640ns  = 2.29V/µs|
| Green/black    | ?                 | 1x          | MP720105 | 3.68V/770ns = 4.78V/µs |
| P6060          | 60 MHz            | 10x         | MP720105 | 3.64V/340ns = 10.7V/µs |
| Green/black    | ?                 | 10x         | MP720105 | 3.68V/228ns = 16.1V/µs |

# References
## DIY passive Lo-Z probes
* [Praise for the Lo-Z Probe](http://paulorenato.com/index.php/93)
* [DC to 1GHz Probe Construction Plans](https://www.emcesd.com/1ghzprob.htm)
* [TeledyneLecroy ZS1500 : 1.5 GHz, 1 MΩ, 0.9 pF Active Probe](https://teledynelecroy.com/probes/active-voltage-probes/zs1500)

## FET-probe
* [Poor Man's 500 MHz Active FET Probe mit OPA659](https://welecw2000a.sourceforge.net/docs/Hardware/Aktiver_Tastkopf_mit_OPA659.pdf)
* [Bob Pease's probe](https://oshwlab.com/andyfierman/project-g2QNnljhf)
* [Poor Man’s 1-GHz Active Probe : 5V max](https://elektrotanya.com/files/forum/2009/10/e04a036.pdf)
* [DIY 1GHz* Active Probe for Under 20$** : from 1MHz up to 500MHz and for voltages up to 2V peak](https://www.instructables.com/DIY-1GHz-Active-Probe-for-Under-20/)
