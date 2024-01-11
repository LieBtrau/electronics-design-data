# Low power, cheap 8 bit
## Microchip tinyAVR 0 family
* Good software support (PlatformIO)
* low cost < €1
* Range of ICs: 
  * SOIC-8 : ATtiny202, ATtiny402
  * SOIC-14 : ATtiny404, ATtiny414, ATtiny804, ATtiny814, ATtiny1604, ATtiny1614
* Holtek HT66 family has equal low power, is cheaper, but lacks software support.
* Simple UPDI programmer (UART and a few discrete components), unlike Holtek, which needs a relatively expensive programmer.

# MCU with LoRa/FSK/OOK radio
* [Heltec CubeCell – Module (V2)](https://heltec.org/project/htcc-am01-v2/)
  * platformio support
  * €10/pce
  * 18x18mm
  * limited documentation
* [RAK RK3172](https://store.rakwireless.com/products/wisduo-lpwan-module-rak3172)
  * no platformio support
  * €6/pce
* [Wio-E5 STM32WLE5JC Module](https://wiki.seeedstudio.com/LoRa-E5_STM32WLE5JC_Module/)
  * platformio support for SeeedStudio LoRa E5 Dev Board and SeeedStudio LoRa-E5 mini
  * 12x12mm

# MCU with BLE
* nRF52840 
  * supported by PlatformIO