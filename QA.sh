#!/bin/bash
#PBS -l select=1:ncpus=8:mem=100gb:arch=ivybridge
#PBS -l place=group=socket
#PBS -l walltime=71:59:59
#PBS -r n
#PBS -N Rscripts
#PBS -A FoKo2017-Epithel
#PBS -m abe
#PBS -M Johannes.Ptok@hhu.de

# In das Verzeichnis wechseln in dem qsub ausgeführt wurde 
cd $PBS_O_WORKDIR

#Change directory
cd /path_to/Project/QA/unprocessed/

/path_to/FastQC/fastqc -o /path_to/Project/QA/unprocessed/ /path_to/Project/Zipped_FASTQ_unprocessed/*.gz

