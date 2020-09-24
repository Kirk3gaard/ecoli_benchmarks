#!/bin/bash/

# Author: Rasmus
# input: reads
# output : miniasm assembly

. ./code/settings.sh

# Miniasm assembly
OUTPUTFILE=data/assemblies/assemblies/NPR10_HAC_miniasm.fa
if [ -s $OUTPUTFILE ]; then echo "$OUTPUTFILE already present";  
else
module load $MINIMAP2MODULE
module load $MINIASMMODULE
minimap2 -t $THREADS -x ava-ont $NANOSUBR10HAC  $NANOSUBR10HAC  > temp/reads.paf 
miniasm -f $NANOSUBR10HAC  temp/reads.paf > temp/miniasm_assembly.gfa
GRAPH=temp/miniasm_assembly.gfa;
circular=($(cat $GRAPH | grep -Po "^S\tutg[0-9]{1,6}c" | sed 's/^S\t//'));
length=${#circular[@]}
for ((i = 0; i != length; i++)); do
   echo -e "L\t${circular[i]}\t+\t${circular[i]}\t+\t0M" >> $GRAPH
done
awk '/^S/{print ">"$2"\n"$3}' temp/miniasm_assembly.gfa > $OUTPUTFILE
module purge
fi
if [ -s $OUTPUTFILE ]; then echo "Successfully generated $OUTPUTFILE" >> log.txt; else echo "Failed generating $OUTPUTFILE" >> log.txt; exit; fi



