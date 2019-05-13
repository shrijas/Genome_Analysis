#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J fastqc_checker
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Modules
module load bioinfo-tools
module load FastQC/0.11.5
#Your commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/raw/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/rnaseq_fastqc "$filename"
done