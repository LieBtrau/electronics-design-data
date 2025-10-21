# Linux install
When wine got an update, you'll have to remove all of wine, including the .wine folder in your home directory, and reinstall wine.  Then you can reinstall LTspice.
1. Install wine
```bash
sudo apt-get remove wine --purge
mv ~/.wine ~/.wine_backup_$(date +%Y%m%d%H%M%S)  # backup your old wine folder
sudo apt update
sudo apt install wine q4wine winbind winetricks playonlinux wine-binfmt exe-thumbnailer
winetricks # to check if everything is ok
wget https://ltspice.analog.com/software/LTspice64.exe
wine LTspice64.exe
```

# Add extra model for standard part, such as e.g. MMBT5551 for an NPN-transistor
1. Add your lib file to : my documents / LTspiceXX.. / lib
2. Add statement ".include MMBT5551.lib"
3. Set the Value-parameter of the part to "MMBT5551"

[Reference](https://spiceman.net/ltspice-command-lib-inc/)

# Using third party model for NMOS/PMOS
[](https://www.analog.com/en/technical-articles/ltspice-using-an-intrinsic-symbol-for-a-third-party-model.html)
1. Add a new part to the schematic, e.g. NMOS
2. Ctrl-right click on the part
3. Set Prefix-parameter of the part to "X"
4. Set Value-parameter of the part to the part name in the library, e.g. "AO3401A".

## My library
* AO3401.mod
* AO3401A.mod
* BSS138P_2011


# Consumed power by component in LTSpice
[LTspice: Computing the Average or RMS Value of a Trace](https://www.analog.com/en/resources/technical-articles/ltspice-computing-the-average-or-rms-value-of-a-trace.html)
1. Run transient simulation
2. Mouse on component, hold ALT-key and left click
3. To get the average power over that period, place the cursor over the title for the power graph, hold the CTRL key, and left click.

# Harmonics analysis
[LTspice tutorial - Ep6 Basics of FFT analysis and .four statment](https://www.youtube.com/watch?v=rVAvW1Jh2AE)
1. Add the following to the schematic:
```spice
.param f=1e3
.four {f} 10 100 V(out)
.options numdgt=7
.options plotwinsize=0
.tran 0 {100/f} 0 {1/(f*100)}
```
Where "f" is the frequency of the signal you want to analyze, e.g. 1kHz.

2. Runs fourier analysis for 10 harmonics and 100 cycles
3. The options are set to 7 digits and no downsampling
4. Be sure to set the time step small enough, otherwise the FFT will not be accurate and show too high harmonics.

For audio signals in general applications, a THD of 1% is acceptable.

# Measure frequency
1. Add the following to the schematic:
```spice
.meas tran T1 find time when V(out)=2.0 rise 1
.meas tran T2 find time when V(out)=2.0 rise 2
.meas tran Frequency param 1/(T2-T1)
```
Where 2.0 is the voltage level at which you want to measure the frequency response.  This should be halfway between the low and high levels of the output signal.  

# Measure S-parameters : insertion loss S21, return loss S11, input impedance Zin, output impedance Zout
1. Add the following to the schematic:
```spice
.net I(Rout) Vin
```
Where "Rout" is the output resistor (50ohm) and "Vin" is the input voltage source (with built-in 50ohm series resistor).
Then you can select what traces to plot in the simulation window: S11, S21, Zin, Zout, ...

# Measure 1dB compression point
1. Add the following to the schematic:
```spice
.meas TRAN vin_pp pp V(Vin)
.meas TRAN vout_pp PP V(Vout_1mA)
.meas TRAN gain_pp PARAM 20*log10(vout_pp/vin_pp)
```
2. Run the transient simulation
3. Use Ctrl-L to open the SPICE Error Log and view the results.
4. The gain_pp value is the gain in dB.
5. Increase the input voltage until the gain is 1dB less than the gain_pp value.
[example](https://www.youtube.com/watch?v=u636Jx4yj84&t=617s)

# Measure IM3
1. Frequency resolution = 1 / (Simulation Time) : 50kHz -> 20µs simulation time
2. Maximum time step = Simulation time / (Number of data point samples in time) : 2e-5 / 2e5 = 1e-10 = 0.1ns = 100ps
3. Disable downsampling ("compression") of the output waveform: .OPTIONS plotwinsize=0
4. In plot window : View -> FFT
5. Disable "quadratic interpolate uncompressed data" tick mark.
6. Specify a time range : select a whole number of cycles
7. Binomial smoothing done before FFT and windowing : Number of points : 3 or 5, doesn't seem to matter much
8. Measure the voltage at one of the two fundamental frequencies : e.g. -24.1dBV -> -11.1dBm
```code
P[dBm] = X[dBV] - 10*log10(50) + 30
       = -24.1dBV - 17 + 30
       = -24.1dBV + 13
       = -11.1dBm
```
9. Measure the voltage at the third order intermodulation frequency : e.g. -79dBV -> -66dBm
10. Calculate the IMD ratio (IMDR[dB]) : Pout_desired[dB] - Pout_distortion[dB] = e.g. (-11.1dBm) - (-66dBm) = 54.9dB
11. OIP3 = IMDR[dB]/2 + Pout_desired[dB] = 54.9dB/2 + (-11.1dBm) = 16.35dBm

# Measure Q of a resonator
1. Add the following to the schematic:
```spice
.meas AC tmp MAX mag(V(vo))
.meas AC bw TRIG mag(V(vo))=tmp/sqrt(2) RISE=1 TARG mag(V(vo))=tmp/sqrt(2) FALL=last
.options meascplxfmt=cartesian
.measure ac cfreq when mag(V(vo))=tmp
.measure ac filterq PARAM Re (cfreq/bw)
```