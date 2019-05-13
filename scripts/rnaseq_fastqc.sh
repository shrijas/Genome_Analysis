#!/bin/bash -L
#SBATCH -A 2019003
#SBATCH -J runchecker_FASTQC
#Commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/raw/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -t 1 -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/rnaseq_fastqc "$filename"
done