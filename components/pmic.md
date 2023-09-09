# LDO
## SOT23-5
### 3V3, high Iout, low Iq
XC6220 : LCSC C86534
* Price : €0.68
* Vinmax : 6.5V -> see [surge protection](../circuits/SurgeTest/SurgeGenerator_IEC%2061000-4-5.asc) when powering from USB
* Ioutmax : 1A
* Iq : 8µA
* Dropout :  0.655V @ 1A
* Alternatives : 
  * RT9080-33GJ5 : Iq = 4µA, 600mA, 6.5Vmax
  * AP7347DQ : Iq = 60µA
  * AP2112-3.3 : Iq = 55µA
  * MIC5219, XC6210, XC6503

### 5V, with enable, high input voltage (>15V), Ioutmax = 100mA
* NCP730ASN500T1G : 150mA, 38V, 2µA Iq
* TPS709  : 150mA, 30V, 1μA Iq
* LDK320AM50R : 200mA, 18V, 60µA Iq
* MCP1755 : 300mA, 16V, 68µA Iq
* RT9069  : 200mA, 36V, 2µA Iq (enable on pin 4)

### 5V, with enable, high input voltage (>15V), Ioutmax = 500mA
Given enough PCB area, it might be better to use a boost converter in SEPIC topology.

#### Parts
* R1500H050B-T1-FE (SOT89-5 package), 500mA/24V, 130µA Iq, 900mW

# Boost/SEPIC converter
An LED driver might be used instead.  The [AP3031 is much cheaper and there are many second sources](https://hackaday.io/project/182940-urban-edc-flashlight/log/201518-led-driver).

* LM2731YMFX/NOPB
* [AN-1484 Designing A SEPIC Converter](https://www.ti.com/lit/an/snva168e/snva168e.pdf)
* [Small Buck-Boost Powering Solutions for IoT Devices](https://ww1.microchip.com/downloads/en/DeviceDoc/TB3274-Small-Buck-Boost-Powering-Solutions-for-IoT-Devices-DS90003274A.pdf)

# Voltage supervisor
Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single super isor and don't react well to power dips.

| Part number | Order nr. | Iq | Timeout | Package | Price \[€\] | Alternatives |
| ---------------|-------------------------|-------|-------|---------|-------|--------------|
| TLV803EA30DBZR | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | SOT23-3 | €0.68 | AOE : xxx803 or xxx809 from many manufacturers <br/>CAT853TTBI-GT3OSCT-ND, 6µA |

# SOIC8 Buck converters
VIN > 24V, Iout > 1A

Pin compatible parts:
* TPS54231 (AGND=SS, external compensation network needed)
* AP64501 (synchronous switcher)
* TPS54233 (AGND=SS)
* TPS5403 (EN=ROSC)
* BD9E100FJ-LB (synchronous switcher)

Other pin standard:
* RT8279, RT8289, TPS5410-EP

# Battery Protection
[Lithium-Ion Battery Circuitry Is Simple](https://hackaday.com/2022/10/10/lithium-ion-battery-circuitry-is-simple/)

## DW01A
* Doesn't do what it's supposed to do : 
  * [DW01A overdischarge protection](https://hackaday.io/project/182940-urban-edc-flashlight/log/201518-led-driver)
  * [ESP32 controller](https://github.com/LieBtrau/esp32-bluetooth-rc-car/tree/main/hardware/NewBrightCo_2015_Corvette)
  * Pin compatible alternative (to be tested): S-8240ADQ-M6T1U

## Standard part
* BQ29700DSER, also available from JLCPCB
* Alternatives: 
  * Mitsumi MM3825: SON-6C package
  * Ablic S-8240A, S-8240B: SNT-6A package
  * TI BQ297xx: 6-WSON package

## AP9101CAK6-ANTRG1
* obsolete, but still available
