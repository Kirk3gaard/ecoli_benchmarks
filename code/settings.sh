# Genome assembly evaluation with E. Coli K12 MG1655 (Ref 4639675 bp)
# We have illumina data from SRA (SRR2627175 - PE 1.1 Gbp)
# and 1D R10.3 nanopore data (0.59 Gbp)
#
# Testing a number of combinations of assembly and polishing strategies

# Data
NPR103="data/raw/ecolk12mg1655_R10_3_guppy_4_0_1_14_HAC.fastq";
ILLUMINA_R1="data/raw/SRR2627175_1.fastq";
ILLUMINA_R2="data/raw/SRR2627175_2.fastq"

# Settings
MEDAKAMODEL=r103_min_high_g360; # https://twitter.com/iiSeymour/status/1287709384609587200
THREADS=100; # (expr $(nproc) - 2) # $(expr $(nproc) / 2)
GENOMESIZE="4.8m";

# Tools
## data trimming
PORECHOPMODULE=Porechop/0.2.3-foss-2018a-Python-3.6.4;
FILTLONGMODULE=Filtlong/0.2.0-foss-2018a;
SEQTKMODULE=seqtk/1.3-foss-2018a;
## Assemblers
MINIMAP2MODULE=Minimap2/2.15-foss-2018a;
MINIASMMODULE=Miniasm/0.3-foss-2018a;
CANUMODULE=canu/2.0-foss-2018a;
WTDBG2MODULE=wtdbg/2.4-foss-2018a;
MODULE_FLYE=Flye/2.6-foss-2018a-Python-3.6.4
SPADESMODULE=SPAdes/3.12.0-foss-2018a;
UNICYCLERMODULE=Unicycler/0.4.6-foss-2018a-Python-3.6.4;
MODULE_MINIPOLISH=Minipolish/0.1.2-foss-2018a-Python-3.6.4

## Polishing tools
RACONMODULE=Racon/1.3.3-claaudia-amd-foss-2018a;
SAMTOOLSMODULE=SAMtools/1.10-foss-2018a;
MEDAKAMODULE=Medaka/1.0.1-foss-2019a;
PILONMODULE=Pilon/1.22-foss-2018a;

## QC
MODULE_CHECKM=CheckM/1.1.2-foss-2018a-Python-3.6.4
MODULE_JAVA=Java/13.0.1
MODULE_PROKKA=prokka/1.14.0-foss-2018a-BioPerl-1.7.2
MODULE_BARRNAP=Barrnap/0.9-foss-2018a
MODULE_FASTANI=FastANI/1.2-foss-2018a
MODULE_QUAST=QUAST/4.6.3-foss-2018a-Python-3.6.4

# MISC
MODULE_R=R/3.5.0-foss-2018a-X11-20180131
MODULE_MUMMER=R/3.5.0-foss-2018a-X11-20180131

###############################################

# Prepare environment
module purge
mkdir -p data/assemblies/
mkdir -p temp
mkdir -p results
mkdir -p results/assemblies
