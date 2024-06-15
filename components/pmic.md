# LDO
## SOT23-5
### 3V3, low Iout, ultra-low Iq
* Package : SOT23-5
* Output : 3.0V
* Output current : 100mA -> 300mA
* Operating temp : -40°C < T < +85°C
* Iq : < 1µA
* Dropout max : 0.16V @ 100mA
* Features :
  * with and without output discharge
  * with and without battery monitoring output
* Manufacturers : TI, Ablic, Diodes, Toshiba
* Sources : 
  * TI TPS7A02 : TPS7A0230PDBVR (JLCPCB C3747031)
  * TI TPS7A03 : TPS7A0330PDBVR (JLCPCB C3752328)
  * Ablic S-1318D30-M5T1U4
  * Diodes AP7354-30W5-7
  * Toshiba TCR3UF30A,LM(CT (good transient response)


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
* AP3031KTR-G1 : LCSC C82636 (€0.12/pce)

* LM2731YMFX/NOPB
* [AN-1484 Designing A SEPIC Converter](https://www.ti.com/lit/an/snva168e/snva168e.pdf)
* [Small Buck-Boost Powering Solutions for IoT Devices](https://ww1.microchip.com/downloads/en/DeviceDoc/TB3274-Small-Buck-Boost-Powering-Solutions-for-IoT-Devices-DS90003274A.pdf)

# Voltage supervisor
Check if your MCU has an internal brownout-detector.  
Instead of a supervisor, a clean power-on reset signal can be generated using : (R||D) / C.  These three components are cheaper, but might use up more space than a single supervisor and don't react well to power dips.

| Part number | Order nr. | Iq | Timeout | Package | Price \[€\] | Alternatives |
| ---------------|-------------------------|-------|-------|---------|-------|--------------|
| TLV803EA30DBZR | 296-TLV803EA30DBZRCT-ND | 250nA | 200ms | SOT23-3 | €0.68 | AOE : xxx803 or xxx809 from many manufacturers <br/>CAT853TTBI-GT3OSCT-ND, 6µA |
| RT9818C-30GVL | 1028-RT9818C-30GVLCT-ND | 3µA | 220ms | SOT23-3 | €0.41|  |
| APX803S-31SA-7 |296-TLV803EA30DBZRCT-ND | 10µA | 240ms | SOT23-3 | €0.35 | JLCPCB C129757 |

## Adjustable voltage supervisor (with 0.4V reference)
* TPS3808G01DBVR (JLCPCB C19653 : €0.38)
* PT7M3808G01TAEX (JLCPCB C780887 : €0.50)
* MIC2790N-04VD6
* MP6400DJ-01

# Buck converter
## Low power Module
* Vin = 6.5V → 36V, Vout = 5V (trimmable), Iout = 500mA
* Positive or negative output voltages by simply connecting differently.
* Mornsun K7805MT-1000R4
* Gaptec LMTM78_05-0.5

## High power Module
* Vin = 4.5V → 28V, Vout = 1.2V → 6V, Iout = 2.5A
  * TI TPSM84209RKH (€2.96/pce)
  * Recom RPX-2.5 (€4.94/pce)

## SOIC8 Buck converters

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
  * Pin compatible alternative (to be tested): S-8240ADQ-M6T1U (requires charger to be connected after overdischarge event)
  * Measuring over-current by measuring voltage drop over the NMOS is not reliable.  The voltage drop is temperature dependent.

## Standard part
* BQ29700DSER, also available from JLCPCB
* Alternatives: 
  * Mitsumi MM3825: SON-6C package
  * Ablic S-8240A, S-8240B: SNT-6A package
  * TI BQ297xx: 6-WSON package

## AP9101CAK6-ANTRG1
* obsolete, but still available

# Li-Ion Charger
* Microchip MCP73831T-2ACI/OT
  * 500mA charger
  * 4.2V end voltage
  * ! no Thermistor control
  * LTC4054, STC4054 and TP4057 share same pin layout.
* TI BQ21040DBVR :
  * higher Vin than MCP73831 : 28V
  * higher charge current : 0.8A
  * 10㏀ thermistor control input
