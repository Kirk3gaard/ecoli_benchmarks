# Rule
# target : prerequisite1 prerequisite2 prerequisite3
# (tab)recipe

# Get data
data/raw/NPR103_HAC_SUBSET.fastq : code/get_fastq_data.sh
	bash ./code/get_fastq_data.sh

data/raw/EcoliK12MG1655_reference.fa : code/get_reference_genome.sh
	bash ./code/get_reference_genome.sh

# Run assemblies
data/assemblies/NPR10_HAC_miniasm.fa : code/run_miniasm.sh
	bash ./code/run_miniasm.sh

data/assemblies/NPR10_HAC_miniasm_raconNP.fa : code/run_raconNP.sh\
												data/assemblies/NPR10_HAC_miniasm_raconNP.fa
	bash ./code/run_raconNP.sh $@


# Run genome QC


# Make report
data/transposed_report.tsv : code/get_premade_data.sh
	bash ./code/get_premade_data.sh

README.md : README.rmd
	R -e "library(rmarkdown); render('README.rmd')"