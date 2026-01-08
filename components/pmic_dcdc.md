# Buck/Boost converter
* TPS631000 : 
  * Li-Ion battery to 3V3 or 5V conversion
  * 8µA quiescent current

# Boost/SEPIC converter
An LED driver might be used instead.  The [AP3031 is much cheaper and there are many second sources](https://hackaday.io/project/182940-urban-edc-flashlight/log/201518-led-driver).
* AP3031KTR-G1 : LCSC C82636 (€0.12/pce)

* LM2731YMFX/NOPB
* [AN-1484 Designing A SEPIC Converter](https://www.ti.com/lit/an/snva168e/snva168e.pdf)
* [Small Buck-Boost Powering Solutions for IoT Devices](https://ww1.microchip.com/downloads/en/DeviceDoc/TB3274-Small-Buck-Boost-Powering-Solutions-for-IoT-Devices-DS90003274A.pdf)

## Very low power boost
* TPS61299 : 95nA Iq, 1.5A max load

# Buck converter
## Low power Module
* Vin = 6.5V → 36V, Vout = 5V (trimmable), Iout = 500mA
* Positive or negative output voltages by simply connecting differently.
* Mornsun K7805MT-1000R4
* Gaptec LMTM78_05-0.5

## High power PoL Module
* Vin = 4.5V → 28V, Vout = 1.2V → 6V, Iout = 2.5A
  * TI TPSM84209RKH (€2.96/pce)
  * Recom RPX-2.5 (€4.94/pce)

## SOT563 Buck converters
Synchronous step-down converters in SOT563 (SC-70-6) package, 4.2V < Vin < 17V, Iout up to 2.5A
* Diodes AP62250Z6-7 : 2.5A (JLCPCB C5290220)
* Diodes AP62301Z6-7 (3A) (JLCPCB C1880992)
* Diodes AP6220x : 2A
* Diodes AP62300Z6-7 : 3A
* MPS MP1477

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

## Very low power
* TPS62840 : 60nA Iq, 0.75A max load
* MAX16956 : 1.1µA Iq
* TPS629206 : 4µA Iq
* LMR51625 : 25µA Iq