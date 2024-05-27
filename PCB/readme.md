mouse bites, see IPC_7351, Figure 3-21

courtyard, see IPC_7352, 3.3

# Layer stackup
## 6 Layer stackup
6 layers (3 signal layers, 2 ground, 1 power)
1. SIG : top : low speed signals
2. GND : layer 1
3. SIG : layer 2 : high speed signals : stripline
  * high speed components on top, changing between top & layer2 keeps layer 1 as reference plane (no decoupling cap or via needed near the layer change)
  * high speed signals on inner layer reduces risk of radiated emissions
4. PWR : layer 3
5. GND: layer 4
6. SIG : bottom : microstrip

More stackups on [High-Speed Layout Guidelines for Signal Conditioners and USB Hubs](https://www.ti.com/lit/an/slla414/slla414.pdf)

# Clearance according to IPC-2221
[Using an IPC-2221 PCB Clearance Calculator for High Voltage Design](https://resources.altium.com/p/using-an-ipc-2221-calculator-for-high-voltage-design)

For 230V, single phase : 3.0mm clearance, 4.0mm creepage

# Temperature rise
[PCB Trace Width Calculator](https://www.digikey.be/en/resources/conversion-calculators/conversion-calculator-pcb-trace-width)

# Over voltage category
[Understanding IEC Overvoltage Categories](https://www.cui.com/blog/understanding-iec-overvoltage-categories)
* CAT II : Local level, appliances designed to be plugged into wall outlets in the house
  * <=300VAC nominal -> 2500V transient
* CAT III : fixed installation
  * <=300VAC nominal -> 4000V transient

# Pollution degree
 IEC 60947-1 and IEC 60664-1:2020

IEC 60664-1:2020 : Insulation coordination for equipment within low-voltage supply systems - Part 1: Principles, requirements and tests