#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J fastqc_trimmedcheck
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Modules
module load bioinfo-tools
module load FastQC/0.11.5

#Your commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -t 1 -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/rnaseq_fastqc/trimmed "$filename"
done