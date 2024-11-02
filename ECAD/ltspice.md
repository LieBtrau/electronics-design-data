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