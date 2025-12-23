#!/usr/bin/env bash

KIPRJMOD=${KIPRJMOD:-.}
mkdir -p ${KIPRJMOD}/output
git_commit_hash=$(git describe --always --dirty)
revision=$3-$git_commit_hash
gerber_folder=${KIPRJMOD}/output/$2"_R"$revision"_GBR"

# Create gerbers
kicad-cli pcb export gerbers \
    --output $gerber_folder \
    --layers F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts \
    --define-var GIT_COMMIT_HASH=$git_commit_hash \
    --subtract-soldermask \
    --use-drill-file-origin \
    $1.kicad_pcb

# Create drill data
kicad-cli pcb export drill \
    --output $gerber_folder \
    --format excellon \
    --drill-origin plot \
    --excellon-zeros-format decimal \
    --excellon-oval-format alternate \
    --excellon-units mm \
    --generate-map \
    --map-format gerberx2 \
    --gerber-precision 6 \
    $1.kicad_pcb

# Rename gerber files
new_file_name=$2"_R"$revision
for f in $gerber_folder/$1-*
do 
    mv "$f" "${f/$1-/$new_file_name-}"
done
# Rename drill data
mv $gerber_folder"/fmosc.drl" $gerber_folder/$2"_R"$revision".drl"