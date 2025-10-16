#!/bin/bash
set -euo pipefail

# Set the working directory to the directory of this file
cd "$(dirname "${BASH_SOURCE[0]}")"

# Define study ID
study_id="SRP255885"

# Define file names
fastq_r1="SRR11518889_1.fastq.gz"
fastq_r2="SRR11518889_2.fastq.gz"
fastq_url="ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889"

# Define and create destination directories for FASTQ files to live in
fastq_dest="../data/raw/fastq/${study_id}"
trimmed_dir="../data/trimmed/${study_id}"
reports_dir="../reports/fastp"

mkdir -p $fastq_dest $trimmed_dir $reports_dir

##### Process the R1 file #####

# If the file doesn't exist, then we need to download it
if [ ! -e "$fastq_dest/$fastq_r1" ]; then

    # Print an indicator:
    echo "Obtaining $fastq_r1"

    # Curl the file (using one of several approaches)
    curl -O $fastq_url/$fastq_r1 # this approach preserves the original internet file name

    # Move the file to its destination directory
    mv $fastq_r1 $fastq_dest

fi

# Explore: how many lines are in the file?
echo "The number of lines in $fastq_r1 is:"
gunzip -c $fastq_dest/$fastq_r1 | wc -l



##### Process the R2 file #####

# If the file doesn't exist, then we need to download it
if [ ! -e "$fastq_dest/$fastq_r2" ]; then

    # Print an indicator:
    echo "Obtaining $fastq_r2"

    # Curl the file (using one of several approaches)
    curl -O $fastq_url/$fastq_r2 # this approach preserves the original internet file name

    # Move the file to its destination directory
    mv $fastq_r2 $fastq_dest

fi

# Explore: how many lines are in the file?
echo "The number of lines in $fastq_r2 is:"
gunzip -c $fastq_dest/$fastq_r2 | wc -l


## Trim the files with fastp
fastp \
  --in1 $fastq_dest/$fastq_r1 \
  --in2 $fastq_dest/$fastq_r2 \
  --out1 $trimmed_dir/$fastq_r1 \
  --out2 $trimmed_dir/$fastq_r2 \
  --html "$reports_dir/${study_id}_report.html" \
  --json "$reports_dir/${study_id}_report.json"



############### Downloading files with curl ###################
##### A few alternative approaches for downloading with curl are shown below, with R1 for example.
##### Depending on how the workshop is moving along, multiple versions can be optionally introduced.
##### The versions shown below will place the downloaded file into the destination directory
#####    as part of the same step without needing a separate line to mv.
##### For any version, you can always add `-s` to keep it quiet!

# Approach 2: Download directly to the location you want
#curl $fastq_url/$fastq_r1 > $fastq_dest/$fastq_r1

# Approach 3: Same as above, but without stdout
#curl $fastq_url/$fastq_r1 -o $fastq_dest/$fastq_r1
##############################################################
