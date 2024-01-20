mouse bites, see IPC_7351, Figure 3-21

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