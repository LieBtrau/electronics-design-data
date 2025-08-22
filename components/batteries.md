[Battery life calculator](http://www.of-things.de/battery-life-calculator.php), used in [#64 What is the Ideal Battery Technology to Power 3.3V Devices like the ESP8266?](https://www.youtube.com/watch?v=heD1zw3bMhw)

# NiMH : 1.2V

Use batteries from Japan(e.g. Panasonic Eneloop, Ikea Ladda, Amazon basic black/silver), not from China

Use low-self discharge types (Varta Ready2Use, ...) : comparison

* high self discharge: not suitable for long runtime, low power
* limited temperature range, especially cold

# Lithium Thionyl Chloride (LiSOCI2) Battery : 3.6V

* (e.g. Xeno XL-060F AA)
* wide temperature range
* low self-discharge
* high internal resistance, not suitable for high current draw.  Can be fixed with supercap, see  [A Long-Lifetime, Cost-Competitive Solution in Smart
Meters Based on the TPS61094](https://www.ti.com/lit/an/slvaf41a/slvaf41a.pdf?ts=1700888594827)

# Alkaline (Zn-MnO2) : 1.5V

* AAA : Aldi : Topcraft Ultra Alkaline (1.2Ah)
* AA : Aldi : [Topcraft Ultra Alkaline (2.6Ah)](https://lygte-info.dk/review/batteries2012/Top%20Craft%20Ultra%20Alkaline%20AA%20UK.html)

At the end of its lifetime it leaks its highly corrosive contents which eats away your electronics.

# LiFeS2 (1.5V, performance upgrade to alkaline)
* -40°C → 60°C
* High current (2A from AA, 200mΩ)
* high capacity(3Ah AA)
* low self-discharge (10 years shelf life)
* safe (short circuit, crush, drop, heating)
* Available in AA and AAA.

* Brico.be : [AAA : Energizer Ultimate Lithium](https://lygte-info.dk/review/batteries2012/Energizer%20Ultimate%20Lithium%20AAA%202019%20UK.html) : 1.3Ah
* Brico.be (€16/10pcs) : [AA : Energizer Ultimate Lithium](https://lygte-info.dk/review/batteries2012/Energizer%20Ultimate%20Lithium%20AA%20UK.html) : 3Ah

# 18650 Li-Ion LiFePO4 : 3.3V

* [#65 How to use Lifepo4 Batteries (Tutorial)(check also the links in the description)](https://www.youtube.com/watch?v=DicVZfW5YL0&t=2s)

* [HTCFR18650-1800mAh-3.2V](https://enerpower.de/wp/wp-content/uploads/2019/07/Technical-Specifications-HTCFR18650-1800mAh-3.2V-EN.pdf) : 1800mAh, LiFePO4, at [nkon.nl](https://eu.nkon.nl/heter-18650-1800mah-5-4a.html) (€1.99)

# 18650 Li-Ion LiNiCoMnO2 : 3.7V

* Limited temperature range (-10°C→+65°C)
* When cold, looses lot of output voltage (up to 0.5V) and capacity
* Charge only at >10°C ambient

* Check the battery test results at [lygte-info.dk](https://lygte-info.dk/review/batteries2012/Common18650Summary%20UK.html)

* [Nkon.nl search engine](https://www.nkon.nl/rechargeable/li-ion/18650-size/price/0-7/protectie-circuit-/zonder/min.-capaciteit-in-mah-/3250-3500/op-voorraad/op-voorraad.html)

## Samsung INR18650-35E

* [Samsung INR18650-35E](https://eu.nkon.nl/rechargeable/li-ion/18650-size/samsung-inr18650-35e.html) : 3400mAh, 3.6V~3.7V, discharge >=2.65V

## Panasonic NCR18650B

* [datasheet](https://www.imrbatteries.com/content/panasonic_ncr18650b-2.pdf) : 1.6A charge current, max. discharge current : 2C (=2x3.2AH = 6.4A)
* Tinytronics.nl : €7/pce
* [bol.com](https://www.bol.com/be/nl/p/4-stuks-flat-top-panasonic-3350mah-ncr18650b-3-7v-6-7a-18650-batterij/9200000095441149/?referrer=socialshare_pdp_www) : €24/4pcs
* LiitoKala Direct NCR18650B (only interesting when buying 10 pieces)
* [Battery street](https://www.batterystreet.be/limno2-cell-panasonic-ncr18650b-3-7v-3400mah): free pick up, €7.25/pce
* [Energie-shop.be](https://www.energie-shop.be/panasonic-li-ion-ncr18650b-3400-mah.html) (€5.69 + €5.00 shipment)

