# LDO
## SOT23-5
Output current > 500mA (for ESP32 builds)
| Part number | Order nr. | Price \[€\] | Alternatives |
| ------------|-----------|-------|--------------|
| XC6220 | LCSC C86534 | 0.68 | AP7347DQ, AP2112-3.3, MIC5219, RT9080-33J5, XC6210, XC6503


# Voltage supervisor
Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single super visor.

| Part number | Order nr. | Iq | Timeout | Price \[€\] | Alternatives |
| ------------|-----------|----|---------|-------------|--------------|
| TLV803EA30DBZR | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | €0.68 | CAT853TTBI-GT3OSCT-ND, 6µA |

# SOIC8 Buck converters
VIN > 24V, Iout > 1A

Pin compatible parts:
* BD9E100FJ-LB
* AP64501
* TPS54233 (AGND=SS)
* TPS54231 (AGND=SS)
* TPS5403 (EN=ROSC)

Other pin standard:
* RT8279, RT8289, TPS5410-EP


