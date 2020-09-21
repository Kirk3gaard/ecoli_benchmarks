README
================
Rasmus Kirkegaard
21/09/2020

# Ecoli benchmarks

**Objective:** Test if R10.3 data can produce nanopore only assemblies
with an indel error rate on par with that of the hybrid approach or
pacbio CCS (I finally got my hands on some data)

**Strategy:** Use E. Coli K12 MG1655 reference strain data to produce a
set assemblies and evaluate these with different assembly metrics in
comparison to the “true” reference

## Dependencies

### Data

### Assemblers

  - unicycler v.
  - spades v.
  - canu v.
  - flye v.

### Polishing tools

  - racon v.
  - medaka v.

### QC

  - checkm v.
  - fastANI v.
  - QUAST v.
  - prokka v.

### Misc

  - guppy v.

  - samtools v.

  - minimap2 v.

  - counterr v.

  - R version 3.6.3 (2020-02-29)
    
      - tidyverse (v. 1.3.0)
      - data.table (v. 1.12.8)
      - rmarkdown (v. 2.3)

# My computer

    ## R version 3.6.3 (2020-02-29)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## Running under: Ubuntu 20.04.1 LTS
    ## 
    ## Matrix products: default
    ## BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.9.0
    ## LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.9.0
    ## 
    ## locale:
    ##  [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8       
    ##  [4] LC_COLLATE=C.UTF-8     LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
    ##  [7] LC_PAPER=C.UTF-8       LC_NAME=C              LC_ADDRESS=C          
    ## [10] LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] rmarkdown_2.3
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] compiler_3.6.3  magrittr_1.5    tools_3.6.3     htmltools_0.5.0
    ##  [5] yaml_2.2.1      stringi_1.4.6   knitr_1.29      stringr_1.4.0  
    ##  [9] xfun_0.16       digest_0.6.25   rlang_0.4.7     evaluate_0.14
