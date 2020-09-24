#!/bin/bash/

# Author: Rasmus
# input: draft assembly + reads
# output : racon polished assembly

. ./code/settings.sh

# +RaconNP polish
OUTPUTFILE=$1
DRAFT=$(echo $OUTPUTFILE | sed -E 's/_raconNP.fa/.fa/');

if [ -s $OUTPUTFILE ]; then echo "$OUTPUTFILE has already been generated";  
else
module load $MINIMAP2MODULE
module load $RACONMODULE
minimap2 -t $THREADS -x map-ont $DRAFT $NANOSUBR10HAC  > temp/mappings1.paf;  
racon -t $THREADS $NANOSUBR10HAC  temp/mappings1.paf $DRAFT > $OUTPUTFILE;
module purge
fi
if [ -s $OUTPUTFILE ]; then echo "Successfully generated $OUTPUTFILE" >> log.txt; else echo "Failed generating $OUTPUTFILE" >> log.txt; exit; fi



