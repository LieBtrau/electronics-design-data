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

# Function pointers
* Function pointers to member functions: function pointers can be made to work with member functions, but the syntax is a bit different. You need to use the `&` operator to get the address of the member function, and you also need to specify the class name. Here's an example:
```cpp
class MyClass {
public:
    void myFunction() {
        Serial.println("Hello from MyClass!");
    }
};
void myFunctionPointer(MyClass* obj, void (MyClass::*func)()) {
    (obj->*func)();
}
void setup() {
    Serial.begin(9600);
    MyClass obj;
    void (MyClass::*func)() = &MyClass::myFunction;
    myFunctionPointer(&obj, func);
}
```
* Function pointers to static member functions: function pointers can also be used with static member functions. The syntax is similar to regular function pointers, but you don't need to use the `&` operator. Here's an example:
```cpp
class MyClass {
public:
    static void myStaticFunction() {
        Serial.println("Hello from MyClass static function!");
    }
};
void myStaticFunctionPointer(void (*func)()) {
    func();
}
void setup() {
    Serial.begin(9600);
    void (*func)() = &MyClass::myStaticFunction;
    myStaticFunctionPointer(func);
}
```
example: Sparkfun STHS34PF80 sensor library

# Cmake variables
```cmake
set(MY_VARIABLE "my_value" CACHE STRING "Description of my variable")
...
```
inside the component:
```cmake
if(MY_VARIABLE STREQUAL "option1")
    # Do something for option1
elseif(MY_VARIABLE STREQUAL "option2")
    # Do something for option2
else()
    message(FATAL_ERROR "Invalid value for MY_VARIABLE: ${MY_VARIABLE}")
endif()
# Bit manipulation
[Encoding bit fields istead of using masks](https://github.com/LieBtrau/chickenguard-2019-upgrade/blob/main/firmware/chickenguard/include/bit_manipulation.h)

# Versioning
## [Include git commit hash and signature bytes in firmware hex file](https://github.com/LieBtrau/urban-edc-flashlight/tree/main/firmware/urban-edc-flashlight)