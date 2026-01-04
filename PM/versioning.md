# Original versioning scheme
Rx.y.z-git id

x = version of requirement & test plan
y = PCB version (Altium : board_revision)
z = BoM version (Altium : assembly_revision)

git id = git short commit id, e.g. 1a2b3c4d

Once released, the version is frozen and cannot be changed.

## Labeling
PCB: Rx.y-{git id}
* z is not included in the PCB version, because it depends on the BoM.
PBA: Rx.y.z

## Problems
When there are multiple assembly variants for the same PCB version, these all share the same revision number, which is confusing.  When an update is needed on one assembly variant, all the others must also be updated to a new revision number, even if they have no changes.  This leads to unnecessary version increments.

There's another problem when a customer asks for a small change on an older PCB version.  It's not possible to simply increment the Requirements & Test Plan version or the PCB-version, because that version might already exist.

# New versioning scheme
This new versioning scheme looks to the issue from a logistical perspective.  In logistics, there aren't really versions.  There are only unique part numbers.  A PCB revision update creates a new unique part number.  A BoM revision update creates a new unique part number.

The problem of new changes on older hardware versions is solved by having a separate field for the branch ID.  This allows to have multiple branches of the same PCB, each with their own versioning.

The PCB and the BoM will each have their own IPN (internal part number) that uniquely identifies them.  The PBA IPN is derived from the PCB IPN.

Git ID is an alternative versioning system, added on the silkscreen and to the manufacturing data.  This allows to trace back the exact design data that was used to manufacture the PCB.  If the design is not properly checked in, this ID will and on "dirty", indicating that the design data is not properly archived.

## PCB versioning
### Application
* IPN : **PCB-0123-4560**
* PCB-silkscreen : **PCB-0123-45▮_git id** : the ▮ is a placeholder for the patch level, which is often not known at the time of silk screen generation.  It can be filled in later with a pen.
* PCB data file names : **PCB-0123-45_git id**

### Structure
* **01** = project code (2 digits).  Can also be a sub assembly code if the project has more than 10 PCBs.
* **2** = board id (1 digit)
* **3** = branch id (1 digit) : for different branches of the same project (e.g. product variants), should be 0 if not used
* **4** = requirement & test plan version (1 digit) : defines compatibility between different PCB versions
* **5** = PCB revision (1 digit, hex)
* **6** = patch level (1 digit, hex) (cutting traces, adding small wires, ... )
* **0** = leave as 0 

## PBA versioning
### Application
* IPN : **PBA-0123-4567**
* PBA data file names : **PBA-0123-4567_git id**

### Structure
* **01** = project code (2 digits).  Can also be a sub assembly code if the project has more than 10 PCBs.
* **2** = board id (1 digit)
* **3** = branch id (1 digit) : for different branches of the same project (e.g. product variants)
* **4** = requirement & test plan version (1 digit) : defines compatibility between different PCB versions
* **5** = PCB revision (1 digit, hex)
* **6** = BoM variant (1 digit, hex) : assembly variant identifier
* **7** = BoM revision (1 digit, hex) : revision of the BoM for this assembly variant

## Schematic versioning
The new versioning scheme differs quite from the standard semantic versioning scheme.  So in the schematic sheet's documentation block, the new versioning scheme will be shown next to a broken down semantic versioning scheme for clarity.
