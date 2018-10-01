## Analysis of RNA sequencing data from cardiovascular endothelial cells

### Library preparation
The mRNA was retrieved from total RNA, isolated from cardiovascular endothelial cells after one week exposure to four differently composed media. Library construction and sequencing (Illumina 3000) were performed at Genomics and Transcriptomics Labor of the Heinrich-Heine university in Düsseldorf. 
<br />
<br />

### FASTQ file processing
Reads were trimmed or even wholly discarded, based on base calling quality and adapter content with the help of the tool Trimmomatic version 0.36 (script1.1 FFP1). Afterwards, extent of rRNA depletion before library preparation was measured by mapping the reads to rRNA databases using sortMeRNA algorithm version 2.1b (script1.2 FFP2). 
<br />
<br />

### Quality assessment
The quality of the reads was assessed using the tool FASTQC and MultiQC (script2 QA), before and after every file processing step.
<br />
<br />

### Aligning with STAR
For alignment and following analysis, the human genomic reference sequence (GRCh38) and annotation data -release 91 - were downloaded from ENSEMBL. Subsequently the reads were mapped to the human reference using the traditional aligner STAR version 2.5.4b (script3 STAR1-4).
<br />
<br />

### Mapping with salmon
For differential gene expression analysis, the processed fastq files were mapped to the reference using the quasi-aligner samlmon (script4 SALMON).
<br />
<br />


### Counting reads on mitochondrial transcript boundaries
Read coverage of gene to gene boundaries of mitochondrial transcripts was calculated using the samtools software package (script5 BORDER1-2). 
<br />
<br />

### DGE
DGE analysis was accomplished using the R package DESeq2 version 1.18.1 (script6 DGE). 
<br />
<br />


### Exon junction analysis
The BAM files were summarized to a single gap file, using the programming language R and the integrated developer environment (IDE) “RStudio” for data manipulation and further calculations. For this purpose, CRAN package rbamtools and the Bioconductor package spliceSites were used among others (script 7 EJ1-2). 
<br />
<br />
<br />

#### Technical infrastructure
Fastq file preparation and alignment was accomplished using custom BASH shell scripts in the environment of the High Performing Cluster of the Heinrich-Heine university Düsseldorf. Computational support and infrastructure was provided by the “Centre for Information and Media Technology” (ZIM) at the University of Düsseldorf (Germany).
