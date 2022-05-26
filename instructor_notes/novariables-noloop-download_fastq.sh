#!/bin/bash
set -euo pipefail

# Define and create destination directory for FASTQ files to live in
mkdir -p ../data/raw/fastq/SRP255885


# R1 file
curl -O https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R1_001.fastq.gz
mv NC16_S1_L004_R1_001.fastq.gz ../data/raw/fastq/SRP255885
gunzip -c ../data/raw/fastq/SRP255885/NC16_S1_L004_R1_001.fastq.gz | wc -l


# R2 file
curl -O https://sra-download.ncbi.nlm.nih.gov/traces/sra63/SRZ/011518/SRR11518889/NC16_S1_L004_R2_001.fastq.gz
mv NC16_S1_L004_R2_001.fastq.gz ../data/raw/fastq/SRP255885
gunzip -c ../data/raw/fastq/SRP255885/NC16_S1_L004_R2_001.fastq.gz | wc -l
