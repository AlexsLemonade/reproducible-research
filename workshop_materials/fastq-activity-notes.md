# Fastq activity overview

+ I identified a potential fastq to use, from a (medulloblastoma study)[https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP255885].
  + S3 links: 
    + https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R1_001.fastq.gz
    + https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R2_001.fastq.gz
    + AKA: `https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R*_001.fastq.gz`
  + Files are 105 and 116 MB, which is not too big to slam their computers but also too big for github


## Instructor script/notes

+ Prompt them to navigate to the _top level directory_ of the repo we cloned with `cd`. 
	+ Ask them to confirm they've arrived with `pwd`
+ Explain, we now want to go complete a task: Obtain a set of paired fastq file, save as local files, and explore it. 
  + By performing these tasks from the command line, we can save a complete record of all steps and leave no ambiguity about the exact actions taken to get the file. 
  + We can first perform some basic tasks on the command line to see how it works generally, and then build it up into a _shell script_ to accomplish our goal.


A rough sketch of the script we'll write together as an activity (building it up slowly!)

```
# Define study ID
STUDY_ID="SRP255885"

# Define file names
FASTQ_FILE_R1="NC16_S1_L004_R1_001.fastq.gz"
FASTQ_FILE_R2="NC16_S1_L004_R2_001.fastq.gz"
FASTQ_URL_PREFIX="https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889"

# Define and create directory for fastq to live in
FASTQ_DEST="data/raw/fastq/${STUDY_ID}"
mkdir -p ${FASTQ_DEST} 

# Use curl to download the file
##### A few approaches we can show them: 

# Download with the filename from the url directly
curl -O "${FASTQ_URL}/${FASTQ_FILE_R1}"
curl -O "${FASTQ_URL}/${FASTQ_FILE_R2}"
mv *fastq.gz ${FASTQ_DEST} 

# Download directly to the location you want
curl "${FASTQ_URL}/${FASTQ_FILE_R1}" > "${FASTQ_DEST}/${FASTQ_FILE_R1}"
curl "${FASTQ_URL}/${FASTQ_FILE_R2}" > "${FASTQ_DEST}/${FASTQ_FILE_R2}"

# Same as above, but without stdout
curl -o "${FASTQ_DEST}/${FASTQ_FILE_R1}" ${FASTQ_URL}/${FASTQ_FILE_R1}
curl -o "${FASTQ_DEST}/${FASTQ_FILE_R2}" ${FASTQ_URL}/${FASTQ_FILE_R2}


# Use a for-loop:
for FASTQ in ${FASTQ_FILE_R1} ${FASTQ_FILE_R2}; do
  # pick an option here:
  curl -o "${FASTQ_URL}/${FASTQ}" > "${FASTQ_DEST}/${FASTQ}"
done


############# end of approaches


## Explore the file a bit (can also be as a for loop)

for FASTQ in ${FASTQ_FILE_R1} ${FASTQ_FILE_R2}; do

  # How many lines are in the file?
  echo "The number of lines in ${FASTQ} is:"
  gunzip -c "${FASTQ_DEST}/${FASTQ}" | wc -l
  
done
``` 

