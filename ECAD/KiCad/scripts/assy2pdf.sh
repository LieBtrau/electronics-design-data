#!/usr/bin/env bash 
# Usage : sch2pdf.sh <project_name> <output_pdf_name> <variant_name>
# https://docs.kicad.org/10.0/ru/cli/cli.html#pcb_export_pdf

# Create folder "output" if it does not exist
KIPRJMOD=${KIPRJMOD:-.} # check if the variable is not null, otherwise replace it by '.'
OUTPUTFOLDER=${KIPRJMOD}/output/$2
mkdir -p ${OUTPUTFOLDER}
git_commit_hash=$(git describe --always --dirty)
new_file_name=$2"_"$git_commit_hash

# Export PCB fabrication layer to multi-page PDF with title block and revision info
# Top side
kicad-cli pcb export pdf ${KIPRJMOD}/$1.kicad_pcb \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --variant $3 \
    --output ${OUTPUTFOLDER}/$new_file_name"_ASSY_TOP.pdf" \
    --layers F.Fab,F.Silkscreen,Edge.Cuts \
    --mode-single \
    --include-border-title \
    --crossout-DNP-footprints-on-fab-layers
# Bottom side
kicad-cli pcb export pdf ${KIPRJMOD}/$1.kicad_pcb \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --variant $3 \
    --output ${OUTPUTFOLDER}/$new_file_name"_ASSY_BOT.pdf" \
    --layers B.Fab,B.Silkscreen,Edge.Cuts \
    --mode-single \
    --include-border-title \
    --crossout-DNP-footprints-on-fab-layers
