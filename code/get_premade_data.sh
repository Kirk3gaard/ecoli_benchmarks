#!/bin/bash/

# Author: Rasmus
# input: none
# output : downloads fastq data

OUTPUT_DIR=data/raw/

mkdir -p $OUTPUT_DIR

curl -L -o data/2020-09-25_EcoliK12MG1655_premade_data.zip https://www.dropbox.com/s/tibwn5b29v2nnj1/2020-09-25_EcoliK12MG1655_premade_data.zip?dl=1
unzip -n -d data/ data/2020-09-25_EcoliK12MG1655_premade_data.zip


if [[ $? -eq 0 ]]; then
    echo "download completed"
	mv data/2020-09-25_EcoliK12MG1655_premade_data/* data/
	rm data/2020-09-25_EcoliK12MG1655_premade_data.zip
	rm -rf data/2020-09-25_EcoliK12MG1655_premade_data/
else
    echo "Fetching the data/$target ran into a problem"
	exit 1
fi


