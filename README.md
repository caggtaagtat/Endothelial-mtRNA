## Workflow for analysis of RNA sequencing data from cardiovascular endothelial cells
<br />
<br />

### Library preparation
The mRNA was retrieved from total RNA, isolated from cardiovascular endothelial cells after one week exposure to four differently composed media. Library construction and sequencing (Illumina 3000) were performed at Genomics and Transcriptomics Labor of the Heinrich-Heine university. 
<br />

### Quality assesment
The quality of the reads was assessed using the tool FASTQC and MultiQC (script QA1), before and after every file processing step.
<br />

### FASTQ file processing
Reads were trimmed or even wholly discarded, based on base calling quality and adapter content with the help of the tool Trimmomatic version 0.36 (script FFP1). Afterwards, extent of rRNA depletion before library preparation was measured by mapping the reads to rRNA databases using sortMeRNA algorithm version 2.1b (script FFP2). 
<br />

### Aligning with STAR
For alignment and following analysis, the human genomic reference sequence (GRCh38) and annotation data -release 91 - were downloaded from ENSEMBL. After mapping the read to the human reference using the traditional aligner STAR version 2.5.4b (script STAR1-3).
<br />

### Counting reads on mitochondrial transcript boundaries
Read coverage of gene to gene boundaries of mitochondrial transcripts was calculated using the samtools software package (script BORDER). 
<br />

### DGE
DGE analysis was accomplished using the R package DESeq2 version 1.18.1 (script DGE). 
<br />
<br />
<br />


#### Technical infrastructure
Fastq file preparation and alignment was accomplished using custom BASH shell scripts in the environment of the High Performing Cluster of the Heinrich-Heine university Düsseldorf. Computational support and infrastructure was provided by the “Centre for Information and Media Technology” (ZIM) at the University of Düsseldorf (Germany).
