#!/bin/bash
set -euo pipefail

# This script downloads and subsets FASTQ files which can be used during workshops when
#  internet speed is limited and prohibits timely downloading of the full FASTQ files.


# Function to curl, subset, and zip a FASTQ file
# Provide a single argument: the FASTQ name, without `.gz` extension
function subset_fastq() {
    # Grab the file
    curl -sO ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/$1.gz

    # Unzip and take first 10000 records (40000 lines)
    gunzip -fc $1.gz \
    | head -n 40000 \
    | gzip \
    > subset-${1}.gz

    # Remove original file. Note we keep the -c flag above and remove here,
    #   since otherwise the final file is empty
    rm $1.gz

}


subset_fastq "SRR11518889_1.fastq"
subset_fastq "SRR11518889_2.fastq"

