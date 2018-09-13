#!/bin/bash
#PBS -l select=1:ncpus=8:mem=100gb:arch=ivybridge
#PBS -l walltime=71:59:59

#Change directory
cd /path_to/Project/
mkdir Trimm
cd /path_to/Project/Trimm/

#For every compressed FASTQ file
find /path_to/Project/Zipped_FASTQ_unprocessed/ -name "*.gz" | while read SAMPLE

#Do the following
do

#Get file name without the filepath
FILEBASE=$(basename "${SAMPLE%_R1_001.fastq.gz}")

#Trimm with trimmimatic to minimal read length of 75bp using 8 cores
java -jar /path_to/trimmomatic-0.36.jar SE $SAMPLE $FILEBASE.trim.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 SLIDINGWINDOW:5:20 MINLEN:75 -threads 8 > "FILEBASE-trimmomatic.log"

done
