# Circuits using only discrete components
* [Discrete linear LED control](../LED_linear_current_control/discrete.asc) : uses two BJT transistors
* [Zero-gain amplifier stabilized current source](../LED_linear_current_control/zero_gain_amp_current_source.asc) : uses three BJT transistor

# Circuits using TLV431 or LM4041
[Basic design equations for three precision current sources](https://www.edn.com/basic-design-equations-for-three-precision-current-sources/) : the gist is to use a MOSFET insted of a BJT as pass transistor because it reduces the error introduced by the BJT's base current.