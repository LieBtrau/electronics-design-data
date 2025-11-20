# Installation
````bash
sudo add-apt-repository --yes ppa:kicad/kicad-9.0-releases
sudo apt update
sudo apt install --install-recommends kicad
````

# Useful links
[Getting started](https://docs.kicad.org/9.0/en/getting_started_in_kicad/getting_started_in_kicad.html)
[KiCAD Best Practices: Library Management](https://hackaday.com/2017/05/18/kicad-best-practises-library-management/)

# Best practices
1. Use private libraries for your own components.
2. Attach a footprint to each schematic symbol.
3. Each unique part has its symbol and footprint.  So that you don't have to assign footprints later.

KiCad uses symbol libraries and footprint libraries:
* In a symbol you can add a fixed footprint.  Very convenient.  You do it once and forget about it.  The disadvantage is that if you have a symbol for a resistor, you have to create multiple symbols for each footprint (size) you want to use.  If you want to change the shape of the symbol, you have to change it in multiple places.  So this is a trade-off between convenience and flexibility.

In the ideal world, there would be a third library type: a part library.  A part would contain a symbol and a footprint.  You can do this with Part-DB, but it's rather involved to set up.