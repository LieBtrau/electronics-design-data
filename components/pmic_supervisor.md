Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single supervisor and don't react well to power dips.

# Without manual reset input
## SOT23-6
Check out the 3808 family : Diodes PT7M3808, TI TPS3808

## SOT23-3
* these are getting less common, not many options for < 3V3 
* pin 1 = reset, pin 2 = GND, pin 3 = VCC
* open drain

| Part number | Order nr. | Iq | Timeout | Package | Price \[€\] | Alternatives |
| ---------------|-------------------------|-------|-------|---------|-------|--------------|
| [TLV803EA30DBZR](https://www.ti.com/product/TLV803E/part-details/TLV803EA30DBZR) | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | SOT23-3 | €0.68 | AOE : xxx803 or xxx809 from many manufacturers |
| APX803S-31SA-7 |296-TLV803EA30DBZRCT-ND | 10µA | 240ms | SOT23-3 | €0.35 | JLCPCB C129757 |

# 3V3 voltage supervisor with manual reset input
* TPS3808EG33DBVR
* TPS3808E

# Adjustable voltage supervisor (with 0.4V reference) with manual reset input
* TPS3808G01DBVR (JLCPCB C19653 : €0.38)
* PT7M3808G01TAEX (JLCPCB C780887 : €0.50)
* MIC2790N-04VD6
* MP6400DJ-01
