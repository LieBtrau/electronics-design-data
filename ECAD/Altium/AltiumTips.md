Component placement : press F1 for help when the "move" command is active
# Altium Tips
1. can't placement close to other components -> press R to change pushing mode
2. From-to lines are not shown when moving components -> press N

# Annotation when reusing sheet symbols
Open a duplicated sheet.  Select one of the duplicated tabs on the bottom of the screen.  That will allow you to change the variation (place or not-place components).
Go to Tools -> Annotation -> Board level annotate
* Annotation Options -> $ComponentPrefix$ComponentIndex.$ChannelIndex (This will add a .1 or .2 etc to the refdes.).  So R111 in main schematic will become R111.1 in the first implementation and R111.2 in the duplicated schematic.
* Annotate -> Annotate all
* Accept Changes 
* Close

# FFC
1. Split lines:
    - press 1 for board planning mode
    - Design -> define split line
1. Pouring plane over split lines : design -> rules -> Board outline clearance -> split continuation