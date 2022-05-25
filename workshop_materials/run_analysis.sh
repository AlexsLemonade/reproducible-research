#!/bin/bash

set -euo pipefail


DATA_DIR=../data/processed/maf_files/
MAF_FILE=Medulloblastoma.maf.tsv.gz
RESULT_DIR=analysis/
RESULT_FILE=Medulloblastoma-gene_counts.tsv

# Question: make this a for loop over the maf files?

Rscript 01_count-gene-mutations.R \ 
  --maf ${DATA_DIR}/${MAF_FILE} \
  --outfile ${RESULT_DIR}/${RESULT_FILE}
  
  
Rscript -e "rmarkdown::render('02_plot-gene-mutations.Rmd')"
