# PCB manufacturers
* [PCBShopper](http://pcbshopper.com/): Compare PCB manufacturers and get the best prices and delivery terms

# PCB Design rules
## Grids
* 0.5mm for components
* 0.1mm grid for everything else

## General
* via = 0.7mm ring, 0.3mm hole
* trace width : aim for 50ohm trace impedance, but don't go below 0.15mm

## From manufacturers
| Parameter            | Eurocircuits 6C | Sparkfun | [Seeed](http://support.seeedstudio.com/knowledgebase/articles/447362-fusion-pcb-specification) | [AllPcb](https://www.allpcb.com/standard_pcb_manufacturing_capability.html)
|----------------------|-----------------|----------|-------|-------|
| Track width          |  0.15           | 0.20     | 0.15  | 0.20  |
| Track to track       |  0.15           | 0.20     | 0.15  | 0.20  |
| Track to pad         |  0.15           | 0.20     | 0.15  | 0.30  |
| Pad to pad           |  0.15           | 0.20     | 0.15  | 0.25  |
| Via hole size        |  0.35           | 0.50     | 0.30  | 0.30  |
| Min. annular ring    |  0.175          | 0.30     | 0.25  | 0.30  |
| Min. dist. Cu to dim.|  0.25           | 0.25     | 0.25  | 0.50  |
| Min. hole-hole dist. |  0.35           | 0.20     | 0.25  | 0.40  |


## Mouse bites
* [Mouse Bites](https://blogs.mentor.com/tom-hausherr/blog/tag/mouse-bite/)
* see IPC_7351, Figure 3-21

## Courtyard
see IPC_7352, 3.3

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