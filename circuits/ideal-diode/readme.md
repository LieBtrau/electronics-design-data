Integrated solutions are generally more cost-effective, see [here](../../components/pmic.md#integrated-ideal-diode) for examples.

Some ideal diode controllers can be configured to allow reverse current, but block reverse voltage.  This is ideal for battery-powered devices, where the battery current needs to flow in both directions (charging and discharging), but the device needs to be protected against reverse polarity.  See [AND90146/D](https://www.onsemi.com/download/application-notes/pdf/and90146-d.pdf) for details.  

When using a discrete active bridge, it's possible (TBC) to connect a battery in both polarities and allow current in both directions.

Full bridge ideal diode controllers (e.g. LT4320) will block reverse current.