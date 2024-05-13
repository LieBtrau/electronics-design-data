# RTC
## Characteristics
* Package : SOIC-8 (smaller alternative is TSSOP-8 3.00mm wide (aka MSOP8))
  * pin 3 : /INT
  * pin 7 : FOUT
* Interface : I²C
* Voltage : 1.8V to 5.5V
* Current - Timekeeping : <1.0µA

## Cheap sources, for room temperature applications
### Very similar register set
* [Diodes PT7C4337WEX](https://www.diodes.com/assets/Datasheets/PT7C4337.pdf)
* Analog DS1337S+T&R

### Pin compatible parts with other register set
* NXP PCF85063AT/AY
* Diodes PT7C4563BWEX
* ECS ECS-RTC-SOP8-5101A-TR

## Temperature compensated, for industrial applications
* Epson RX8901CE

# Crystals
Mind the temperature range of the crystal. The oscillation frequency of the crystal is inherently temperature dependent. From -120ppm at -40°C to +120ppm at 85°C is a common range. 
Take the parabolic coefficient of the crystal into account (see Seiko crystals). The parabolic coefficient is the second derivative of the frequency with respect to temperature.

## Reference
[Tuning fork crystals & Oscillator](https://abracon.com/Support/Tuning-Fork-Crystals-and-Oscillator.pdf)