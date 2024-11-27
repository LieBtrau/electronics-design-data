# Determining optimal protection
## Standard [IEC 61000-4-5](https://rtpcorp.com/wp-content/uploads/2021/04/IEC61000-4-5.pdf)
* 1.2µs/50µs open-circuit voltage waveform
* 8/20µs short-circuit current waveform

Line-to-line coupling : 18µF in series with 2Ω -> Iout = Vout/2Ω.  So for a 6kV pulse, Iout = 3kA.
Line-to-ground coupling : 9µF in series with 12Ω -> Iout = Vout/12Ω.  So for a 6kV pulse, Iout = 500A.

## Hybrid protection
<img src="./resources/gdt_to_earth.png" width="200"/>
GDT to earth instead of MOV for HIPOT-testing

GDT in parallel with MOV for surge protection (see ITU-T K.99).  MOV clamping voltage should be higher than GDT sparkover voltage.

Disadvantages of GDTs: 
Follow-on current : For DC applications with input voltage > 20V or AC-mains lines, when a surge is applied, the GDT will continue to conduct.  The solution is to use :
* stacked GDTs (multiple GDTs in series with capacitors)
* MOV in series with the GDT (combination devices exist Bourns).  MOV should have significantly higher lower clamping voltage than the GDT but higher than the arc and glow voltage of the GDT.

Disadvantages of MOVs:
* leakage current increases over time when subjected to a bias voltage as well as variations in temperature.  It ends with thermal runaway.
* clamping voltage increases with current

Advantages of MOVs:
* lower capacitance than TVS diodes

### 3-GDT, 2-MOV protection
* [Lightning Surge Response Improvement by Combinations of Varistors and Gas Discharge Tubes](https://www.wseas.org/multimedia/journals/power/2012/54-510.pdf)

# References
* [How to Select the Optimum Transient Surge Protection for EV On-Board Chargers](https://m.littelfuse.com/media?resourcetype=application-notes&itemid=a12f2475-d207-4f54-a7d6-01c4d6eb435c&filename=how-to-select-the-optimum-transient-surge-protection-for-ev-on-board-chargers-application-note)
* [Bourns : Designing Effective Surge Protection for AC and DC Powered Systems](https://www.bourns.com/docs/technical-documents/technical-library/isomov/application-notes/Surge_Protection_for_AC_and_DC_Powered_Systems_appnote.pdf)
* [Product Profile 2025 Surge Arresters and Switching Spark Gaps](https://www.tdk-electronics.tdk.com/download/174146/2f5abeca101a09c264a07fd6ede44414/surge-arresters-pp.pdf)
* Rec. ITU-T K.99 (07/2017)