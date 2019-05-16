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
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -phred33 \
/home/shsr0481/Genome_Analysis/data/rna_seq_data/raw/sel3/sel3_SRR1719266.1.fastq.gz \
/home/shsr0481/Genome_Analysis/data/rna_seq_data/raw/sel3/sel3_SRR1719266.2.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_1P.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_1U.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_2P.fastq.gz \
/home/shsr0481/Genome_Analysis/results/2_Trimming/rna_seq_data/raw/sel3_SRR1719266.trim_2U.fastq.gz \

#Above 4 lines are output files
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36