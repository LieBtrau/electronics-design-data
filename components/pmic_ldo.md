For low power applications, consider a low Iq buck converter instead of an LDO.  e.g. TPS62840 : Iq=60nA, Vinmax=6.5V, Iout=600mA.

# SOT23-5
## 3V3, low Iout, low Iq
* Holtek HT7533 (100mA out, 2.5µA Iq) : SOT23-3

## 3V3, low Iout, ultra-low Iq
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

## 3V3, high Iout, low Iq
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

## 5V, with enable, high input voltage (>15V), Ioutmax = 100mA
* NCP730ASN500T1G : 150mA, 38V, 2µA Iq
* TPS70950DBVR  : 150mA, 30V, 1μA Iq (JLCPCB C96028), 1.5V dropout @ 150mA
* LDK320AM50R : 200mA, 18V, 60µA Iq
* MCP1755 : 300mA, 16V, 68µA Iq
* RT9069-50  : 200mA, 36V, 2µA Iq (enable on pin 4)

## 5V, with enable, high input voltage (>15V), Ioutmax = 500mA
Given enough PCB area, it might be better to use a boost converter in SEPIC topology.

### Parts
* R1500H050B-T1-FE (SOT89-5 package), 500mA/24V, 130µA Iq, 900mW