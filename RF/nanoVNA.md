# Installation

[Binary releases](https://github.com/NanoVNA-Saver/nanovna-saver/releases/)
Python install of 0.5.4 didn't work (changelog.md not found)

## Linux
Download 0.5.4 binary or later

## Windows : COM-port doesn't want to detect
1. Make sure pyserial is installed.
2. Connect VNA
3. Device Manager → Universal Serial Bus controllers → remove "USB UART adapter"
4. Disconnect & reconnect VNA

# Data points
Do this at every startup of NanoVNA!

Serial port control → Manage → Settings → Datapoints : 1023

# Calibration
## Frequency setup
1. Sweep Control → Start (e.g. 50kHz)
2. Sweep Control → Stop (e.g. 30MHz)

**Problem** : Standalone VNA calibration works ok.  Measurement results in VNA-QT and VNA-saver are different from the results shown on the NanoVNA's screen.

**Solution** : Use Nanovna-saver → Calibration... → Calibration assistant

# Touchstone files
* s1p : 1 port parameter only (s11)
* s2p : 2 port parameter : s11 & s21 : It doesn't make sense to save a s1p-file when you're also saving a s2p-file for the same measurement

# Measurements with resistor attenuator on secondary coil of transformer
* if possible, don't use SMA-cables.   Connect the coils directly to the ports of the NanoVNA
* Connect the resistor directly to the secondary coil.  Don't connect secondary coil to an SMA-connector and then the resistor on the other end of the SMA-cable, close to port 2.

# Measuring impedances
When measuring impedance, remark that **"S11 Phase" is not the same as impedance phase**.  The S11 phase is the phase of the reflected signal, while the impedance phase is the phase of the voltage across the load.

## Series, shunt, shunt-through measurements
* [Dan Koellen](https://www.ai6xg.com/post/reactive-component-measurement-with-the-nanovna)
* [Brian Walker](http://www.clarke.com.au/pdf/CMT_Accurate_Measurements_VNA.pdf)


# Measuring unknown cable impedance
* [#326: How to Measure the impedance of "unknown" coax using a NanoVNA](https://www.youtube.com/watch?v=hqKLFbNYRZc)
* [nanoVNA - Coaxial Cable Measurement Methods (Characteristic Impedance and Cable Loss) - VE6WGM](https://youtu.be/G66_iqOu-Bs?t=1083)
  1. Leave cable open
  2. Find purely capacitive point (-90° = bottom of smith chart).
  3. Write down capacitive value and frequency
  4. Short-circuit the cable.
  5. Write down inductive value at that same frequency.
  6. Z = sqrt(L/C)

# Measuring cable length
[#316: Use NanoVNA to measure coax length - BONUS Transmission Lines and Smith Charts, SWR and more](https://www.youtube.com/watch?v=9thbTC8-JtA)

# Problems and solutions
* When NanoVnaSaver doesn't want to boot any more:
 * Linux : Remove its config : '~/.config/NanoVNASaver/'
 * Windows : Disconnect VNA before starting NanoVNASaver.