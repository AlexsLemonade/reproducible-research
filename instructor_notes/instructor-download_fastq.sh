#!/bin/bash
set -euo pipefail

# Define study ID
STUDY_ID="SRP255885"

# Define file names
FASTQ_R1="NC16_S1_L004_R1_001.fastq.gz"
FASTQ_R2="NC16_S1_L004_R2_001.fastq.gz"
URL_PREFIX="https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889"

# Define and create destination directory for FASTQ files to live in
FASTQ_DEST="data/raw/fastq/$STUDY_ID"
mkdir -p $FASTQ_DEST 


# Loop over the two files to avoid repeating code, since we're performing the same tasks on them:
for FASTQ in $FASTQ_R1 $FASTQ_R2; do

  ###### Print an indicator:
  echo "Obtaining $FASTQ"
  
  # Define the URL for this fastq
  FASTQ_URL=$URL_PREFIX/$FASTQ
  
  ###### Download the file using curl
  # A few approaches are shown here. Depending on how things are going multiple versions can be optionally introduced, or pick one.
  # Can always add `-s` to any version to keep it quiet!

  # Approach 1: Download with the filename from the url directly
  # This approach is preferred because it practices wildcard, AND ensures file name matches the internet
  curl -O "$FASTQ_URL"
  mv *fastq.gz $FASTQ_DEST 
  
  # Approach 2: Download directly to the location you want
  #curl "$FASTQ_URL" > "$FASTQ_DEST/$FASTQ"

  # Approach 3: Same as above, but without stdout
  #curl $FASTQ_URL -o "$FASTQ_DEST/$FASTQ"

  
  ###### Explore: how many lines are in the file?
  echo "The number of lines in $FASTQ is:"
  gunzip -c "$FASTQ_DEST/$FASTQ" | wc -l
  
  # Note: a fancier option if instructors want to show is - 
  #NLINES=`gunzip -c "$FASTQ_DEST/$FASTQ" | wc -l`
  #echo "The number of lines in $FASTQ is $NLINES"

done