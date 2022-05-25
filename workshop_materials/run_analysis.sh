#!/bin/bash

set -euo pipefail


# Define paths 
DATA_DIR=../data/processed/maf_files/
RESULT_DIR=analysis/


# Run the code over each of the following MAF names using a for loop
for NAME in Ependymoma Ganglioglioma LGAT Medulloblastoma; do

    # Define input file
    MAF_FILE=$NAME.maf.tsv.gz

    # Define output file(s)
    RESULT_FILE=$NAME-gene_counts.tsv

    # Run the script to process the MAF file and export a table of gene counts
    Rscript 01_count-gene-mutations.R \ 
      --maf ${DATA_DIR}/${MAF_FILE} \
      --outfile ${RESULT_DIR}/${RESULT_FILE}
  
  
    # Run the notebook to visualize the results (or whatever it will do)
    Rscript -e "rmarkdown::render('02_SOMETHING.Rmd')"

done