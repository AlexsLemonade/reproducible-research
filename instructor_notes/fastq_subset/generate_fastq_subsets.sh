#!/bin/bash
set -euo pipefail

# This script downloads and subsets FASTQ files which can be used during workshops when
#  internet speed is limited and prohibits timely downloading of the full FASTQ files.


# Function to curl, subset, and zip a FASTQ file
# Provide a single argument: the FASTQ name, without `.gz` extension
function subset_fastq() {
    # Grab the file
    curl -sO https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/$1.gz

    # Unzip and take first 10000 records (40000 lines)
    gunzip -f $1.gz \
    | head -n 40000 \
    | gzip \
    > subset-${1}.gz

    # Remove uncompressed file
    rm $1
}


subset_fastq "NC16_S1_L004_R1_001.fastq"
subset_fastq "NC16_S1_L004_R2_001.fastq"

