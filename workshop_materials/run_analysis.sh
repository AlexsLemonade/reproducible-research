#!/bin/bash

set -euo pipefail


# Define paths 
DATA_DIR=../data/processed/maf_files/
RESULT_DIR=analysis/

# Define input file
MAF_FILE=Medulloblastoma.maf.tsv.gz

# Define output file(s)
RESULT_FILE=Medulloblastoma-gene_counts.tsv

# Run the script to process the MAF file and export a table of gene counts
Rscript 01_count-gene-mutations.R \ 
  --maf ${DATA_DIR}/${MAF_FILE} \
  --outfile ${RESULT_DIR}/${RESULT_FILE}
  
  
Rscript -e "rmarkdown::render('02_plot-gene-mutations.Rmd')"
