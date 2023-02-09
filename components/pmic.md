# LDO
## SOT23-5
Output current > 500mA (for ESP32 builds)
| Part number | Order nr. | Price \[€\] | Alternatives |
| ------------|-----------|-------|--------------|
| XC6220 | LCSC C86534 | 0.68 | AP7347DQ, AP2112-3.3, MIC5219, RT9080-33J5, XC6210, XC6503

# Voltage supervisor
Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single super isor and don't react well to power dips.

| Part number | Order nr. | Iq | Timeout | Package | Price \[€\] | Alternatives |
| ---------------|-------------------------|-------|-------|---------|-------|--------------|
| TLV803EA30DBZR | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | SOT23-3 | €0.68 | AOE : xxx803 or xxx809 from many manufacturers <br/>CAT853TTBI-GT3OSCT-ND, 6µA |

# SOIC8 Buck converters
VIN > 24V, Iout > 1A

Pin compatible parts:
* TPS54231 (AGND=SS)
* AP64501 (synchronous switcher)
* TPS54233 (AGND=SS)
* TPS5403 (EN=ROSC)
* BD9E100FJ-LB (synchronous switcher)

Other pin standard:
* RT8279, RT8289, TPS5410-EP

# Battery Protection
[Lithium-Ion Battery Circuitry Is Simple](https://hackaday.com/2022/10/10/lithium-ion-battery-circuitry-is-simple/)
* DW01A 2.5V -> replace by FS312 for 3.0V
