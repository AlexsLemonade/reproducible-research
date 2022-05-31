#!/bin/bash
set -euo pipefail

# Define and create destination directory for FASTQ files to live in
mkdir -p ../data/raw/fastq/SRP255885


# Loop over the two files to avoid repeating code, since we're performing the same tasks on them:
for FASTQ in NC16_S1_L004_R1_001.fastq.gz NC16_S1_L004_R2_001.fastq.gz; do

  ###### Print an indicator:
  echo "Obtaining $FASTQ"
  
  # Download the file and move to directory
  curl -O https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/$FASTQ
  mv $FASTQ ../data/raw/fastq/SRP255885
  
  ###### Explore: how many lines are in the file?
  echo "The number of lines in $FASTQ is:"
  gunzip -c ../data/raw/fastq/SRP255885/$FASTQ | wc -l
  
done
