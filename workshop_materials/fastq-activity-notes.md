# Fastq activity overview

+ I identified a potential fastq to use, from a (medulloblastoma study)[https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP255885].
  + S3 link: https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R1_001.fastq.gz
  + This file is 105 MB, which is not too big to slam their computers but also too big for github


## Instructor script/notes

+ Prompt them to navigate to the _top level directory_ of the repo we cloned with `cd`. 
	+ Ask them to confirm they've arrived with `pwd`
+ Explain, we now want to go complete a task: Obtain a fastq file, save it as a file locally, and explore it. 
  + By performing these tasks from the command line, we can save a complete record of all steps and leave no ambiguity about the exact actions taken to get the file.
  + Therefore, we will write a _shell script_ to accomplish the goal.


A rough sketch of the script we'll write together as an activity (building it up slowly!)

```
# Define file names
FASTQ_FILE="NC16_S1_L004_R1_001.fastq.gz"
FASTQ_URL=https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/${FASTQ_FILENAME_GZ}

# Define and create directory for fastq to live in
FASTQ_DEST=path_for_fastq/ 
mkdir -p ${FASTQ_DEST} 

# Use curl to download the file
############ Two options:

## Option 1: (probably not this, right?)
cd path_for_fastq
curl ${FASTQ_URL} > ${FASTQ_FILENAME_GZ}
cd ..

## Option 2:
curl ${FASTQ_URL} > ${FASTQ_FILENAME_GZ}
mv ${FASTQ_FILENAME_GZ} ${FASTQ_DEST}

############# end of options

## Unzip the file to create file named ${FASTQ_FILENAME}
gunzip ${FASTQ_FILENAME_GZ} 

## Explore the file a bit:

# How many lines are in the file?
echo "The number of lines is:"
wc -l ${FASTQ_FILENAME}
``` 

