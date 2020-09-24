#!/bin/bash/

# Author: Rasmus
# input: none
# output : downloads fastq data

OUTPUT_DIR=data/raw/

mkdir -p $OUTPUT_DIR


#

target=NPR103_HAC_SUBSET.fastq
curl -L -o $OUTPUT_DIR/$target https://www.dropbox.com/s/rgef1ch8xkqsop5/NPR103_HAC_SUBSET.fastq?dl=1
curl -L -o $OUTPUT_DIR/EcoliK12MG1655_reference_16S_rRNA_clean_noduplicates.fa https://www.dropbox.com/s/tvfhugi3xo0iff1/EcoliK12MG1655_reference_16S_rRNA_clean_noduplicates.fa?dl=1
curl -L -o $OUTPUT_DIR/ILM_SUBSET_R1.fastq https://www.dropbox.com/s/v3hm97pt9o9p5r8/ILM_SUBSET_R1.fastq?dl=1
curl -L -o $OUTPUT_DIR/ILM_SUBSET_R2.fastq https://www.dropbox.com/s/c3lts1w824vpu6a/ILM_SUBSET_R2.fastq?dl=1

if [[ $? -eq 0 ]]; then
    touch $OUTPUT_DIR/$target
	touch $OUTPUT_DIR/EcoliK12MG1655_reference_16S_rRNA_clean_noduplicates.fa
	touch $OUTPUT_DIR/ILM_SUBSET_R1.fastq
	touch $OUTPUT_DIR/ILM_SUBSET_R2.fastq
else
    echo "Fetching the data/$target ran into a problem"
	exit 1
fi


