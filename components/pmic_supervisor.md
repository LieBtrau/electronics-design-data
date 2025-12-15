Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single supervisor and don't react well to power dips.

# Without manual reset input
| Part number | Order nr. | Iq | Timeout | Package | Price \[€\] | Alternatives |
| ---------------|-------------------------|-------|-------|---------|-------|--------------|
| TLV803EA30DBZR | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | SOT23-3 | €0.68 | AOE : xxx803 or xxx809 from many manufacturers <br/>CAT853TTBI-GT3OSCT-ND, 6µA |
| RT9818C-30GVL | 1028-RT9818C-30GVLCT-ND | 3µA | 220ms | SOT23-3 | €0.41|  |
| APX803S-31SA-7 |296-TLV803EA30DBZRCT-ND | 10µA | 240ms | SOT23-3 | €0.35 | JLCPCB C129757 |

# 3V3 voltage supervisor with manual reset input
* TPS3808EG33DBVR
* TPS3808E

# Adjustable voltage supervisor (with 0.4V reference) with manual reset input
* TPS3808G01DBVR (JLCPCB C19653 : €0.38)
* PT7M3808G01TAEX (JLCPCB C780887 : €0.50)
* MIC2790N-04VD6
* MP6400DJ-01
