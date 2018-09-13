#!/bin/bash
#PBS -l select=1:ncpus=8:mem=100gb:arch=ivybridge
#PBS -l walltime=71:59:59

#Doing FastQC with unzipped FASTQ files and storing the result in new folder
/path_to/FastQC/fastqc -o /path_to/Project/QA/unprocessed/ /path_to/Project/FASTQ_unprocessed/*.fq
