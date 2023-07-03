# Function parameter example
* [Arduino-kiss](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/other/arduino-kiss)
* [Si4463-stream](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/radio/si4463-stream)

# Error handling
## Non-esp32
* [Arduino-kiss](https://github.com/LieBtrau/digital-walkie-talkie/tree/master/firmware/tests/other/arduino-kiss): error.h & error.cpp

## ESP32
* [chickenguard](https://github.com/LieBtrau/chickenguard-2019-upgrade/tree/main/firmware/chickenguard)

# Ringbuffer
lib_deps =
  rlogiacco/CircularBuffer @ ^1.3.3
  
# Delay, non-polling
AsyncDelay

# Debouncing
Bounce2

# Rotary encoder
  paulstoffregen/Encoder @ ^1.4.2 ; alternative rotary encoder library : mathertel/RotaryEncoder (used on https://github.com/LieBtrau/better-alarm-clock/blob/master/firmware/full-application/lib/TactileElements/RotaryEncoder_Tactiles.cpp)


# Bit manipulation
[Encoding bit fields istead of using masks](https://github.com/LieBtrau/chickenguard-2019-upgrade/blob/main/firmware/chickenguard/include/bit_manipulation.h)