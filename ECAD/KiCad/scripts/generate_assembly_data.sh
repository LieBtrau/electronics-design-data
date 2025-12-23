#!/usr/bin/env bash
# Usage : generate_assembly_data.sh <project_name> <output_base_name> <revision_prefix>

KIPRJMOD=${KIPRJMOD:-.}
mkdir -p ${KIPRJMOD}/output
git_commit_hash=$(git describe --always --dirty)
revision=$3-$git_commit_hash

# Create BoM file in CSV format as accepted by JLCPCB
kicad-cli sch export bom \
    --output ${KIPRJMOD}/output/$2"_R"$revision"_BoM.csv" \
    --format-preset CSV \
    --fields "Value,Reference,Footprint,LCSC" \
    --labels "Comment,Designator,Footprint,LCSC part number" \
    --group-by LCSC \
    --exclude-dnp \
    --field-delimiter "," \
    --ref-delimiter "," \
    ${KIPRJMOD}/$1.kicad_sch

# Create Pick and Place file in CSV format as accepted by JLCPCB
kicad-cli pcb export pos \
    --output ${KIPRJMOD}/output/$2"_R"$revision"_PnP.csv" \
    --side both \
    --format csv \
    --units mm \
    --use-drill-file-origin \
    --exclude-dnp \
    ${KIPRJMOD}/$1.kicad_pcb
# Replace first line to match JLCPCB format
sed -i '1s/.*/Designator,Val,Package,Mid X,Mid Y,Rotation,Layer/' ${KIPRJMOD}/output/$2"_R"$revision"_PnP.csv"