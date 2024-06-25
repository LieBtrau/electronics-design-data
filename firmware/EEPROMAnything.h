#include <EEPROM.h>
#include <Arduino.h>  // for type definitions
#include <util/crc16.h>

template <class T> int EEPROM_writeAnything(int ee, const T& value)
{
    word crc=0xFFFF;
    const byte* p = (const byte*)(const void*)&value;
    unsigned int i;
    for (i = 0; i < sizeof(value); i++){
        crc=_crc_ccitt_update(crc,*p);
        EEPROM.write(ee++, *p++);
    }
    EEPROM.write(ee++, crc>>8);
    EEPROM.write(ee,crc & 0xFF);
    return i;
}

template <class T> boolean EEPROM_readAnything(int ee, T& value)
{
    word crcIn=0xFFFF;
    byte* p = (byte*)(void*)&value;
    unsigned int i;
    for (i = 0; i < sizeof(value); i++){
        *p++ = EEPROM.read(ee++);
        crcIn=_crc_ccitt_update(crcIn,*(p-1));
    }
    word crcRead=EEPROM.read(ee++)<<8;
    crcRead+=EEPROM.read(ee);
    return (crcRead==crcIn?true:false);
}
