# Add extra model for standard part, such as e.g. MMBT5551 for an NPN-transistor
1. Add your lib file to : my documents / LTspiceXX.. / lib
2. Add statement ".include MMBT5551.lib"
3. Set the Value-parameter of the part to "MMBT5551"

[Reference](https://spiceman.net/ltspice-command-lib-inc/)

# Using third party model for NMOS/PMOS
[](https://www.analog.com/en/technical-articles/ltspice-using-an-intrinsic-symbol-for-a-third-party-model.html)

## My library
* AO3401.mod
* AO3401A.mod


# Consumed power by component in LTSpice
1. Run transient simulation
2. Mouse on component, hold ALT-key and left click
3. To get the average power over that period, place the cursor over the title for the power graph, hold the CTRL key, and left click.