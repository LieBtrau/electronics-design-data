# Installation
````bash
sudo add-apt-repository --yes ppa:kicad/kicad-9.0-releases
sudo apt update
sudo apt install --install-recommends kicad
````

# Preferences
* For better readability on screens, the carlito font is recommended.

# Useful links
[Getting started](https://docs.kicad.org/9.0/en/getting_started_in_kicad/getting_started_in_kicad.html)
[KiCAD Best Practices: Library Management](https://hackaday.com/2017/05/18/kicad-best-practises-library-management/)
[Bouni's JLCPCB integration](https://raw.githubusercontent.com/Bouni/bouni-kicad-repository/main/repository.json) : doesn't work on KiCad 9

# Video tutorial
* [KiCad 9 Hardware Design Tutorial (TI MSPM0) (1/2 Schematic) - Phil's Lab #165](https://youtu.be/O-zNn5k5Bn4) : 1h56'
* [KiCad 9 Hardware Design Tutorial (TI MSPM0) (2/2 PCB) - Phil's Lab #166](https://youtu.be/igQWdVGZGpI) : 2h31'

# Library Best practices
* [KiCon 2023 Database Libraries](https://www.youtube.com/watch?v=nZqoay-Yevk) : explains why using a database is better than using simple libraries.
* [git-plm](https://github.com/git-plm/parts) : converts csv (displayed properly in github) to sqlite, which is a standard database format and interfaces with KiCad
    * takes some time to setup
    * by far the most professional solution
    * I forked my own version on [kicad-parts](https://github.com/LieBtrau/kicad-parts)
* ~~[kicad-db-lib](https://github.com/Projektanker/kicad-db-lib)~~ : easy to setup, but stores data in a json file (custom format).  Might be hard to share with other tools.

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

## Text variables
[How to use text variables to keep all sheets in sync](https://philipmcgaw.com/kicad-title-block): in schematic editor, File -> Schematic Setup -> Project -> Text Variables

I use the following variables:
* ASSEMBLY_REVISION : revision of the assembly (changes when BoM changes)
* BOARDNR : IPN (internal part number) of the board.  All boards can be found on the [PCB database](https://github.com/LieBtrau/kicad-parts/blob/main/database/g-pcb.csv)
* GIT_COMMIT_HASH : will be filled automatically by the output jobset
* PROJECTURL : URL of the project repository
* REQUIREMENTS_REVISION : revision of the requirements document (changes when requirements change).  A requirements change typically causes PCBs to be incompatible to the previous version.

# Output file generation
I created three [jobsets](https://github.com/LieBtrau/electronics-design-data/tree/master/ECAD/KiCad/jobsets): generating PDF info, generating gerbers and generating assembly data.  Each of these jobsets calls [script](https://github.com/LieBtrau/electronics-design-data/tree/master/ECAD/KiCad/scripts) that executes a kicad-cli command with a predefined set of parameters.  This makes it easy to generate all output files in a reproducible way.  A git-commit hash is automatically inserted into the title block of the schematic and PCB and into the file names of the output files.

Make sure to configure the path KICAD_SCRIPT_DIR in the preferences to point to the folder where the scripts are stored.

* interactive HTML BoM : install the plugin
* ~~[KDT_Hierarchical_KiBot](https://github.com/nguyen-v/KDT_Hierarchical_KiBot)~~ : it looks very nice on the surface, but I doubt if it's really useful in practice.  This seems like a software project management tool rather than a PCB design tool.