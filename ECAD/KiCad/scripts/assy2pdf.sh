#!/usr/bin/env bash 
# Usage : sch2pdf.sh <project_name> <output_pdf_name> <revision_prefix>

# Create folder "output" if it does not exist
KIPRJMOD=${KIPRJMOD:-.}
mkdir -p ${KIPRJMOD}/output
git_commit_hash=$(git describe --always --dirty)
revision_prefix=$3-$git_commit_hash

# Export PCB fabrication layer to multi-page PDF with title block and revision info
kicad-cli pcb export pdf ${KIPRJMOD}/$1.kicad_pcb \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --output ${KIPRJMOD}/output/$2"_R"$revision_prefix"_ASSY_TOP.pdf" \
    --layers F.Fab,F.Silkscreen,Edge.Cuts \
    --mode-single \
    --include-border-title

kicad-cli pcb export pdf ${KIPRJMOD}/$1.kicad_pcb \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --output ${KIPRJMOD}/output/$2"_R"$revision_prefix"_ASSY_BOT.pdf" \
    --layers B.Fab,B.Silkscreen,Edge.Cuts \
    --mode-single \
    --include-border-title
