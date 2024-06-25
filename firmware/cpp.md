# Mixing C and CPP
[How can I modify my own C header files so it’s easier to #include them in C++ code?](https://isocpp.org/wiki/faq/mixing-c-and-cpp#include-c-hdrs-personal)

# Function parameter example
* [Arduino-kiss](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/other/arduino-kiss)
* [Si4463-stream](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/radio/si4463-stream)

# Error handling
## Non-esp32
* [Arduino-kiss](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/other/arduino-kiss): error.h & error.cpp

## ESP32
* [chickenguard](https://github.com/LieBtrau/chickenguard-2019-upgrade/tree/main/firmware/chickenguard)

## EEPROM config with CRC
* [EEPROMAnything](./EEPROMAnything.h), the version found online doesn't have the CRC-check

# Ringbuffer
lib_deps =
  rlogiacco/CircularBuffer @ ^1.3.3
  
# Delay, non-polling
AsyncDelay

# Debouncing
Bounce2

# Rotary encoder
  paulstoffregen/Encoder @ ^1.4.2 ; alternative rotary encoder library : mathertel/RotaryEncoder (used on https://github.com/LieBtrau/better-alarm-clock/blob/master/firmware/full-application/lib/TactileElements/RotaryEncoder_Tactiles.cpp)

# Macros
* Replace `#define` for register definitions with scoped enum class as done [here](https://github.com/LieBtrau/esp32-web-radio/tree/main/firmware/esp32/platformio/thieu-b55/lib/ES8388).

# Bit manipulation
[Encoding bit fields istead of using masks](https://github.com/LieBtrau/chickenguard-2019-upgrade/blob/main/firmware/chickenguard/include/bit_manipulation.h)

# Versioning
## [Include git commit hash and signature bytes in firmware hex file](https://github.com/LieBtrau/urban-edc-flashlight/tree/main/firmware/urban-edc-flashlight)