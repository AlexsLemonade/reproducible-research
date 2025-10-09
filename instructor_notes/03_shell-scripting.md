# Instructor Notes: FASTQ Download Activity

This document provides instructions for teaching downloading/saving FASTQ files with shell scripting.

## Learning goals

At the end of this activity, workshop attendees should be able to write a simple shell script.

## Activity

The goal of this activity is to interactively develop a script to download and save these two paired FASTQ files:

+ Paired FASTQ files from [Study ID `SRP255885`](https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP255885), an RNA-seq dataset about medulloblastoma
  + Download links:
    + <ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_1.fastq.gz>
    + <ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_2.fastq.gz>
  + Compressed files are 105.9 and 116.5 MB, which is not too big to slam their computers but also too big for GitHub

+ **Alternatively**, if the internet speed is prohibitively slow for downloading these full FASTQ files, we have subsetted versions that contain only the first 10,000 reads.
  + Download links:
    + <https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq.gz>
      + An uncompressed version is also available: <https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq>
    + <https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_2.fastq.gz>
  + Be aware that these alternative links are not shown in the provided solution scripts.
  When presenting this alternative approach, the instructor should clearly explain that we are specifically and only using these subsetted versions from the repository in order to save time during the workshop.

+ Instruct participants to open the `rrp-workshop-exercises` repository in VS code.
+ Create a file `scripts/download-fastq.sh` using VS code.
+ Populate the top of the script with some of our most used practices and describe their purpose:
  + Add a shebang (`#!/bin/bash`)
  + `set -euo pipefail`
  + `cd "$(dirname "${BASH_SOURCE[0]}")"`
+ Discuss at a high-level what steps we wish to perform:
  + Download a file
  + Move it to the correct location
    + The destination directory needs to exist 
  + Count the number of lines in the FASTQ file
+ Start writing the script without using variables [`solutions/novariables_download-fastq.sh`](solutions/novariables_download-fastq.sh)
+ Build up to using variables [`solutions/variables_download-fastq.sh`](solutions/variables_download-fastq.sh)

