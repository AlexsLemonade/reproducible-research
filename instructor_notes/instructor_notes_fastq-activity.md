# Instructor Notes: FASTQ Activity

This document provides instructions for teaching downloading/saving FASTQ files with shell scripting.

## Learning goals

At the end of this activity, workshop attendees should be able to:

+ Navigate the command line with fundamental UNIX commands (`cd`, `pwd`, `ls`, etc.)
+ Become familiar with commands used to manipulate files and directories (`cd`, `mv`, `mkdir`, `rm`, etc.)
+ Use commands to glance at files from the command line (`less`, `head`)
+ Use `curl` to download and save file content from the internet
+ Write a simple shell script with useful skills like defining, writing a for loop, and printing


## Activity 

The goal of this activity is to interactively develop a script to download and save these two paired FASTQ files:

+ Paired FASTQ files from (Study ID SRP255885)[https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP255885], and RNA-seq dataset about medulloblastoma
  + Download links: 
    + https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R1_001.fastq.gz
    + https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R2_001.fastq.gz
  + Compressed files are 105.9 and 116.5 MB, which is not too big to slam their computers but also too big for github


+ On the command line, use `cd` to navigate to the top level of the repository that was just cloned.
+ Discuss at a high level what tasks we wish to perform:
  + Download the file
  + Place it in the correct location with the correct name
    + This means the destination location needs to exist
  + Perform some light exploration, for example how many lines (and /4 = how many reads)?
  + Consider that we are going to do all of the same tasks for both files, and we want to avoid bugs!
+ Begin by performing some tasks _interactively_ on the command line as a first pass:
  + Create a directory for the fastq files
    + Goal: `data/raw/fastq/SRP255885`
    + Use this opportunity to introduce `mkdir` and the benefit of `mkdir -p`
  + Curl _one_ of the files: `curl -O https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R1_001.fastq.gz`
  + Use `ls` and then `ls -h` to confirm file was created and then see its size
    + Useful change to practice `ls *gz` or similar
  + Move the file to destination with `mv`
    + Option: This could also be a moment to slightly break from flow and demonstrate `cp` vs `mv`
  + Reflect: We're typing the same thing over and over interactively! Maybe using variables would help!
  + Explore the contents of the file with piping:
    + `cd` into `data/raw/fastq/SRP255885`
    + Unzip the file and explain redirection: `gunzip -c NC16_S1_L004_R1_001.fastq.gz > NC16_S1_L004_R1_001.fastq`
    + Show usage of `less` and `head` to see the file
    + Show usage of `wc` and then `wc -l` to see counts and just line counts
+ Now, we are ready to build up a script that will perform this for us on _both_ sets of paired reads.
  + Remove the file we've already downloaded with `rm`
  + Navigate back to the directory `rrp-workshop-exercises/scripts/` (may involve creating this directory)
  + Use `touch` to create a blank file for our script: `download_fastq.sh`, use `ls` to confirm it was created, and open in text editor
  + Build up with them the script contained in [`./instructor-download_fastq.sh`](./instructor-download_fastq.sh)
    + There are some options in this script, e.g. several ways to write `curl`. 
    + Whether only one or more of these are demonstrated should be decided on a workshop-by-workshop basis.





