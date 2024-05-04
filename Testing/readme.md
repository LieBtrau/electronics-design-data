[test fixtures](https://mg-products.com/)

# Process control
[Process capability](https://en.wikipedia.org/wiki/Process_capability_index)

# Test hardware

## PC
Thin client, fanless box mini-PC inside the test fixture, as used in digital signage

[Overview](https://www.parkytowers.me.uk/thin/): 
* Lenovo ThinkCentre M92p Tiny, M93p Tiny
* HP T620,630,640,730,740
* FS S920,S940 or Dell/Wyse 5060,5070
* Optiplex 3000 thin client
* [ASRock iBOX-420-DL](https://www.asrockind.com/en-gb/iBOX-420-DL)
* [VNOPN Mini PC Intel N3150 Quad Core,Fanless Mini Computer]()

## Power supply
### Power the test system
TFX form factor (smaller than ATX) : 12V, 5V, 3.3V, -12V, 5VSB
* [TFX-300W-e](https://www.inter-tech.de/files/images/psu/88882144/TFX-300W-e.pdf)

### Power the DUT
Variable power supply with adjustable current control is very fancy, but not necessary.  A fixed power supply (or multiple fixed power supplies that can be switched) is sufficient.
Current control and measurement can be done with a power monitor.

### Power monitor
* [Power Supply with Programmable Output Voltage and Protection for Position Encoder Interfaces](https://www.ti.com/lit/ug/tidu533/tidu533.pdf?ts=1706793796290)
* [Reference Design MagI³C Power Supply](https://www.we-online.com/en/components/products/VDRM_POWERSUPPLY)
* ISL28022
* INA238

They have the following features:
* Measure current
* Measure voltage
* Alert on overcurrent, which can be used to shut down the power supply (and save the DUT)
* I²C interface to read measurements and configure alerts

## Data acquisition
* [Pi-Plates DAQC2plate](https://pi-plates.com/daqc2r1/)
  * 8 digital inputs (3.3 to 5V)
  * 8 digital outputs, open collector
  * 8 analog inputs (-12V to +12V)
  * 4 analog outputs (0 to 4.096V)
  * 2 PWM modulators
  * 1 frequency counter
  * Connections to test system using JST-PH cable assemblies.  Connector name on test system written with permanent marker on cable assembly connector.

* [MICROpi](https://pi-plates.com/micropi/)
  * Controlled by PC using [Adafruit u2if firmware](https://learn.adafruit.com/circuitpython-libraries-on-any-computer-with-raspberry-pi-pico)