#!/bin/bash
#PBS -l select=1:ncpus=1:mem=100gb:arch=ivybridge
#PBS -l walltime=110:59:59

#Load Python3
module load Python/3.4.5

#Change directory to location of trimmed FASTQ files
cd /path_to/Project/rRNA_depletion/

#For every trimmed FASTQ file
find /path_to/Project/Trimm/ -name "*trim.fq.gz" | while read SAMPLE

#Do the following
do

#Get file name without the filepath
FILEBASE=$(basename "${SAMPLE%.trim.fq.gz}")

#Doing sortmerna with CURRENT
/path_to/sortmerna-2.1b/sortmerna --ref /path_to/sortmerna-2.1b/rRNA_databases/silva-bac-16s-id90.fasta,/path_to/sortmerna-2.1b/index/silva-bac-16s-db:/path_to/sortmerna-2.1b/rRNA_databases/silva-bac-23s-id98.fasta,/path_to/sortmerna-2.1b/index/silva-bac-23s-db:/path_to/sortmerna-2.1b/rRNA_databases/silva-arc-16s-id95.fasta,/path_to/sortmerna-2.1b/index/silva-arc-16s-db:/path_to/sortmerna-2.1b/rRNA_databases/silva-arc-23s-id98.fasta,/path_to/sortmerna-2.1b/index/silva-arc-23s-db:/path_to/sortmerna-2.1b/rRNA_databases/silva-euk-18s-id95.fasta,/path_to/sortmerna-2.1b/index/silva-euk-18s-db:/path_to/sortmerna-2.1b/rRNA_databases/silva-euk-28s-id98.fasta,/path_to/sortmerna-2.1b/index/silva-euk-28s:/path_to/sortmerna-2.1b/rRNA_databases/rfam-5s-database-id98.fasta,/path_to/sortmerna-2.1b/index/rfam-5s-db:/path_to/sortmerna-2.1b/rRNA_databases/rfam-5.8s-database-id98.fasta,/path_to/sortmerna-2.1b/index/rfam-5.8s-db --reads "$SAMPLE" --aligned "${FILEBASE}-rRNA-hits.fq" --other "${FILEBASE}.fq" --log -a 1 --fastx

done
