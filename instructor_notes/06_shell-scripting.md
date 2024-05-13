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

+ Paired FASTQ files from [Study ID `SRP255885`](https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP255885), an RNA-seq dataset about medulloblastoma
  + Download links:
    + ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_1.fastq.gz
    + ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_2.fastq.gz
  + Compressed files are 105.9 and 116.5 MB, which is not too big to slam their computers but also too big for github

+ **Alternatively**, if internet speed is prohibitively slow for downloading these full FASTQ files, we have subsetted versions that contain only the first 10,000 reads.
  + Download links:
    + https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq.gz
      + An uncompressed version is also available: https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq
    + https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_2.fastq.gz
  + Be aware that these alternative links are not shown in the provided solution scripts.
  When presenting this alternative approach, the instructor should clearly explain that we are specifically and only using these subsetted versions from the repository in order to save time during the workshop.
  Instructors can share these URLs in the training-specific Slack channel to easily provide the links to participants.

+ On the command line, use `cd` to navigate to the top level of the repository that was just cloned.
+ Discuss at a high level what tasks we wish to perform:
  + Download the file
  + Place it in the correct location with the correct name
    + This means the destination location needs to exist
  + Perform some light exploration, for example how many lines (and /4 = how many reads)?
  + Consider that we are going to do all of the same tasks for both files, and we want to avoid bugs!
+ Begin by performing some tasks _interactively_ on the command line as a first pass:
  + Create a directory for the FASTQ files
    + Goal: `data/raw/fastq/SRP255885`
    + Use this opportunity to introduce `mkdir` and the benefit of `mkdir -p`
  + Curl _one_ of the files: `curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_1.fastq.gz`
    + Again, if the internet speed requires time-saving measures, use the given alternate link above to download a subsetted version from this repository.
  + Use `ls` and then `ls -h` to confirm file was created and then see its size
    + Useful change to practice `ls *gz` or similar
  + Move the file to `data/raw/fastq/SRP255885` with `mv`
    + Option: This could also be a moment to slightly break from flow and demonstrate `cp` vs `mv`
  + Explore the contents of the file with piping:
    + Unzip the file and explain redirection with the following code:
      + `gunzip -c SRR11518889_1.fastq.gz > SRR11518889_1.fastq`
    + Show usage of `less` and `head` to see the uncompressed file
    + Show usage of `wc` and then `wc -l` to see counts and just line counts
+ Now, we are ready to build up a script that will perform this for us on _both_ sets of paired reads.
  + Remove the file (and its uncompressed version) we've already downloaded with `rm SRR11518889_1.*`
  + Navigate back to the directory `rrp-workshop-exercises/scripts/` (may involve creating this directory)
  + Open text editor to create and save a script called `download-fastq.sh`
  + Build up with them the script contained in [`./novariables_download-fastq.sh`](./novariables_download-fastq.sh)
    + Note this script version contains some options, specifically several ways to write `curl`.
    + Whether only one or more of these are demonstrated should be decided on a workshop-by-workshop basis.
  + Pending time, after script is written, take a step back to ask: How could we have improved this? One answer is _using variables._
    + This instructor version is in [`./variables_download-fastq.sh`](./variables_download-fastq.sh)


## Quick reference

The code chunk below contains commands to run in order during this activity:

```sh
# create destination directory
mkdir -p data/raw/fastq/SRP255885

# curl fastq
# full version:
curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR115/089/SRR11518889/SRR11518889_1.fastq.gz
# small version:
curl -O https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-SRR11518889_1.fastq.gz

# confirm curl
ls -h

# mv the file to destination directory, and navigate there
mv SRR11518889_1.fastq.gz data/raw/fastq/SRP255885/
cd data/raw/fastq/SRP255885


# unzip the file
gunzip -c SRR11518889_1.fastq.gz > SRR11518889_1.fastq

# explore the file
head SRR11518889_1.fastq
tail SRR11518889_1.fastq
wc SRR11518889_1.fastq
wc -l SRR11518889_1.fastq

# remove both file versions before running script
rm SRR11518889_1.*

# navigate back, leveraging tab as we go to get the right path
cd ../../../../
```
