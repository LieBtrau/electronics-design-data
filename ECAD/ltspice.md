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

# Measure insertion loss, return loss
[Measuring Retun Loss](https://maker.pro/forums/threads/measuring-retun-loss.72803/)
* Insertion loss can easily be measured with a 50 source and 50ohm load and setting AC-voltage to 2V.

# Measure input impedance
1. Replace the input source with a current source.
2. Set the current source to 1A.
3. Do AC analysis 
4. The voltage at the current source is the input impedance.

# Measure output impedance
1. Replace the output load with a current sink.
2. Set the current sink to 1A.
3. Do AC analysis 
4. The voltage at the current sink is the output impedance.

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

# Measure IM3
1. Frequency resolution = 1 / (Simulation Time) : 50kHz -> 20µs simulation time
2. Maximum time step = Simulation time / (Number of data point samples in time) : 2e-5 / 2e5 = 1e-10 = 0.1ns = 100ps
3. Disable downsampling ("compression") of the output waveform: .OPTIONS plotwinsize=0
4. In plot window : View -> FFT
5. Disable "quadratic interpolate uncompressed data" tick mark.
6. Specify a time range : select a whole number of cycles
7. Binomial smoothing done before FFT and windowing : Number of points : 3 or 5, doesn't seem to matter much