#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc_wgsdata
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Modules
module load bioinfo-tools
module load FastQC/0.11.5
#Your commands
for filename in /home/shsr0481/Genome_Analysis/data/raw_data/sel3/wgs_data/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -o /home/shsr0481/Genome_Analysis/results/1_Qualitycontrol_RNA/wgs_data "$filename"
done
