# Determining optimal protection
## Standard [IEC 61000-4-5](https://rtpcorp.com/wp-content/uploads/2021/04/IEC61000-4-5.pdf)
* 1.2µs/50µs open-circuit voltage waveform
* 8/20µs short-circuit current waveform

Line-to-line coupling : 18µF in series with 2Ω -> Iout = Vout/2Ω.  So for a 6kV pulse, Iout = 3kA.
Line-to-ground coupling : 9µF in series with 12Ω -> Iout = Vout/12Ω.  So for a 6kV pulse, Iout = 500A.

# PTC fuses
* Use as secondary protection for Li-Ion batteries
  * When primary protection (e.g. DW01A) fails
  
* JLCPCB RUILON SMD1812P300TF/16V : Ih=3A, It=5A
* BelFuse 0ZCG0300FF2B 
