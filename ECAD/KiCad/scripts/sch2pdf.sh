#!/usr/bin/env bash 
# Usage : sch2pdf.sh <project_name> <output_pdf_name> <revision_prefix> <variant_name>
# Reference : https://docs.kicad.org/10.0/ru/cli/cli.html#schematic_export_pdf

# Create folder "output" if it does not exist
KIPRJMOD=${KIPRJMOD:-.}
OUTPUTFOLDER=${KIPRJMOD}/output/$2
mkdir -p ${OUTPUTFOLDER}
git_commit_hash=$(git describe --always --dirty)
new_file_name=$2"_"$git_commit_hash

kicad-cli sch export pdf \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --variant $3 \
    --output ${OUTPUTFOLDER}/$new_file_name"_SCH.pdf" \
    --theme Altium_like  \
    ${KIPRJMOD}/$1.kicad_sch