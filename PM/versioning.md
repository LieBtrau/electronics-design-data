Rx.y.z-git id

x = version of requirement & test plan
y = PCB version (Altium : board_revision)
z = BoM version (Altium : assembly_revision)

git id = git short commit id, e.g. 1a2b3c4d

Once released, the version is frozen and cannot be changed.

# Labeling
PCB: Rx.y
* z is not included in the PCB version, because it depends on the BoM.
PBA: Rx.y.z