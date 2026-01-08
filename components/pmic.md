# Current monitor
## Analog output
* TI INA199x : SC-70-6
  * A (1.5%, older, less ESD protection), B (1.5%) or C (1%) grade
  * bidirectional current sense amplifier
  * 26Vmax
  * alternative Diodes ZXCT21x

# Battery Protection
[Lithium-Ion Battery Circuitry Is Simple](https://hackaday.com/2022/10/10/lithium-ion-battery-circuitry-is-simple/)
* Standard part
  * BQ29700DSER, also available from JLCPCB
  * Alternatives: 
    * Mitsumi MM3825: SON-6C package
    * Ablic S-8240A, S-8240B: SNT-6A package
    * TI BQ297xx: 6-WSON package
* AP9101CAK6-ANTRG1
  * obsolete, but still available
* DW01A : Doesn't do what it's supposed to do : 
  * [DW01A overdischarge protection](https://hackaday.io/project/182940-urban-edc-flashlight/log/201518-led-driver)
  * [ESP32 controller](https://github.com/LieBtrau/esp32-bluetooth-rc-car/tree/main/hardware/NewBrightCo_2015_Corvette)
  * Pin compatible alternative (to be tested): S-8240ADQ-M6T1U (requires charger to be connected after overdischarge event)
  * Measuring over-current by measuring voltage drop over the NMOS is not reliable.  The voltage drop is temperature dependent.

# Li-Ion Charger
* BQ25186
  * 1A I²C-controlled linear battery charger with power path and solar input support
  * MPPT for solar input
  * low quiescent current
* Microchip MCP73831T-2ACI/OT
  * 500mA charger
  * 4.2V end voltage
  * ! no Thermistor control
  * LTC4054, STC4054 and TP4057 share same pin layout.
* TI BQ21040DBVR :
  * higher Vin than MCP73831 : 28V
  * higher charge current : 0.8A
  * 10㏀ thermistor control input

# Current Sense Amplifier
* [INA226](https://jlcpcb.com/partdetail/TexasInstruments-INA226AIDGSR/C49851): 36Vmax, 10µA input leakage on analog inputs 
* [INA238AIDGSR](https://jlcpcb.com/partdetail/TexasInstruments-INA238AIDGSR/C2868250) : 85Vmax, 2.5nA input leakage on analog inputs
  * probably FFF-alternative is ISL28022

# Integrated ideal diode
* LM66100, NID5100GW 
  * Simple and cheap
  * 1.2 V to 5.5 V
  * 1.5 A 
  * input polarity protected
  * low quiescent current (150nA)

* For higher voltages (>24V), but requires external N-MOSFETs (only starts at 4V):
  * AP74700QW6-7
  * NCV68061SNAIT1G
  * TPS65R01Q-S6TR-S
  * LM74700QDBVRQ1, LM74700QDBVTQ1

* [LM73100](https://www.ti.com/product/LM7310/part-details/LM73100RPWR)
  * Input voltage : 2.7V to 23V
  * reverse current flow blocked
  * input reverse polarity protected
  * inrush current protection
  * input UVLO
  * input OVLO
  * Not suitable for battery applications (high quiescent current)

For zero Iq : LM74610-Q1 Zero IQ Reverse Polarity Protection Smart Diode Controller
* not ground referenced
* will temporarily turn mosfet off to recharge capacitor.  So the output voltage will drop during this time.
* at low currents (<1mA), the NMOS will not turn on. 

# LED Driver
4.4mm wide TSSOP-24 package, 16 outputs, max. 5.5V, serializable via SPI
* ST STP16CPC26XTR
* TI TLC5928PWPR (with LED error detection)
* TI TLC59282DBQR (many at JLCPCB)
* Sunmoon SM16306S, JLCPCB C2830324 (€0.07/pce)

## 2-terminal Linear LED driver
* OnSemi NSI450xxx series : 45V
* Diodes AL5809

# Power Distribution Switches, Load Drivers
* TPS22917
  * cheap (€0.39)
  * Vin : 1V to 5.5V
  * 0.5µA Iq
  * reverse current blocking (which would require two MOSFETs in back-to-back configuration otherwise)
  * output discharge
  * adjustable inrush current