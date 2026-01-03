# Hardware setup
The laptop generates a lot of noise on the output channels.  It helps a lot to connect an 100nF capacitor from left and right output to ground to filter out high frequency noise.

In absence of this filter, a standard Nedis CAGB22150K02 audio splitter cable can be used.

# Software Setup
Preferences > Soundcard > Soundcard Calibration > Calbrate Soundcard...
1. Select output device : PCM default
2. Output : L
3. Select input device : Default Device
4. Input : R

# Calibration Steps when using audio loopback cable
1. Select "Generator"
2. Setup generator : 0dBFS Sine wave, Frequency 1kHz, Output L
3. Open "RTA"
4. Setup RTA : Input R
5. Open "Scope Window"
6. Setup Scope Window : CH1
7. In the Linux sound panel, adjust the output volume and mic level until you get on the RTA an SNR of about 40dB while the input level is around 0dBFS.  Remark that some microphone ALC effect is going on during this step.

These settings can now be used to calibrate the soundcard.

## Read volume level from the OS
```
$ pactl get-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo
Volume: front-left: 33667 /  51% / -17.36 dB,   front-right: 33667 /  51% / -17.36dB balance 0.00

$ pactl get-source-volume alsa_input.pci-0000_00_1f.3.analog-stereo
Volume: front-left: 20955 /  32% / -29.71 dB,   front-right: 20955 /  32% / -29.71dB balance 0.00
```

## You can also set the volume level from the OS
```
$ pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo 51%
$ pactl set-source-volume alsa_input.pci-0000_00_1f.3.analog-stereo 32%
```

# Measurements
## Frequency Response
1. Select "Measure"
2. Select "SPL"
3. Set start and end frequency
4. Check the levels.  -6dBFS on the input is a good compromise between distortion and noise floor.  Adjust the mic level if needed.

# Reference
* [#413 Your PC Soundcard is an Oscilloscope, a Signal Generator, and a Spectrum Analyzer (Arta, REW)](https://youtu.be/dX0QkL8xMmE)