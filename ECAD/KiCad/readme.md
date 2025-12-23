# Installation
````bash
sudo add-apt-repository --yes ppa:kicad/kicad-9.0-releases
sudo apt update
sudo apt install --install-recommends kicad
````

# Preferences
* If you want to use Times New Roman font, install the ttf-mscorefonts-installer package.

# Useful links
[Getting started](https://docs.kicad.org/9.0/en/getting_started_in_kicad/getting_started_in_kicad.html)
[KiCAD Best Practices: Library Management](https://hackaday.com/2017/05/18/kicad-best-practises-library-management/)
[Bouni's JLCPCB integration](https://raw.githubusercontent.com/Bouni/bouni-kicad-repository/main/repository.json) : doesn't work on KiCad 9

# Video tutorial
* [KiCad 9 Hardware Design Tutorial (TI MSPM0) (1/2 Schematic) - Phil's Lab #165](https://youtu.be/O-zNn5k5Bn4) : 1h56'
* [KiCad 9 Hardware Design Tutorial (TI MSPM0) (2/2 PCB) - Phil's Lab #166](https://youtu.be/igQWdVGZGpI) : 2h31'

# Part parameters
* Value, Footprint, Datasheet, Description
* Manufacturer, Manufacturer part number
* TrustedParts (link)
* LCSC

# Library Best practices
* [KiCon 2023 Database Libraries](https://www.youtube.com/watch?v=nZqoay-Yevk) : explains why using a database is better than using simple libraries.
* [git-plm](https://github.com/git-plm/parts) : converts csv (displayed properly in github) to sqlite, which is a standard database format and interfaces with KiCad
    * takes some time to setup
    * by far the most professional solution
* [kicad-db-lib](https://github.com/Projektanker/kicad-db-lib) : easy to setup, but stores data in a json file (custom format).  Might be hard to share with other tools.

# Git
## Content of .gitignore for KiCad projects:
```
# Generic backup files
*~
\#*
.\#*

# KiCad backup files
*.bak
*.bck
*.kicad_pcb-bak

# KiCad generated files
*.erc
*.net
*-cache.lib
*-rescue.lib
```

## Show git version on schematic/PCB
There's no easy way to automatically show the git sha on the schematic or PCB.  You can use scripts to update a text field before each commit.
[How to add Git Sha on you KiCad schematic drawing](https://www.e2labs.store/post/how-to-add-git-sha-on-you-kicad-schematic-drawing)
[How to use text variables to keep all sheets in sync](https://philipmcgaw.com/kicad-title-block): in schematic editor, File -> Schematic Setup -> Project -> Text Variables

# Output job
* interactive HTML BoM : install the plugin
* [KDT_Hierarchical_KiBot](https://github.com/nguyen-v/KDT_Hierarchical_KiBot) : it looks very nice, but it's overly complicated for simple projects.