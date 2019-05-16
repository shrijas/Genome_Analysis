#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Trimmomatic_process
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Modules
module load bioinfo-tools
module load trimmomatic

#Your commands
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic.jar PE -threads 2 -phred33 \
/home/shsr0481/Genome_Analysis/data/rna_seq_data/raw/sel3/sel3_SRR1719266.1.fastq.gz \
/home/shsr0481/Genome_Analysis/data/rna_seq_data/raw/sel3/sel3_SRR1719266.2.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_1P.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_1U.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_2P.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_2U.fastq.gz \
ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:17 MINLEN:36 
