#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J runchecker_FASTQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/raw/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -t 1 -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/rnaseq_fastqc "$filename"
done