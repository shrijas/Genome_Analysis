#!/bin/bash -L
#Commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/raw/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc $filename -t 1 -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/rnaseq_fastqc "$filename"
done