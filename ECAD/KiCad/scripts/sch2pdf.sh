#!/usr/bin/env bash 
# Usage : sch2pdf.sh <project_name> <output_pdf_name> <revision_prefix>

# Create folder "output" if it does not exist
KIPRJMOD=${KIPRJMOD:-.}
mkdir -p ${KIPRJMOD}/output
git_commit_hash=$(git describe --always --dirty)
new_file_name=$2"_"$git_commit_hash

kicad-cli sch export pdf \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --output ${KIPRJMOD}/output/$new_file_name"_SCH.pdf" \
    --theme Altium_like  \
    ${KIPRJMOD}/$1.kicad_sch