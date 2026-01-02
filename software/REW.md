# Setup
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

