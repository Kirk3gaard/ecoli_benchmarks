#!/bin/bash/

# Author: Rasmus
# input: none
# output : downloads fasta reference
#
mkdir -p data/raw/

target=data/raw/EcoliK12MG1655_reference.fa
i="U00096.3"
curl -s  "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=${i}&rettype=	fasta&retmode=txt">$target
curl -s  "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=${i}&rettype=	gb&retmode=txt">data/raw/$i.gff3

if [[ $? -eq 0 ]]; then
    touch $target
    touch data/raw/$i.gff3
else
    echo "Fetching the data/$target ran into a problem"
    exit 1
fi


