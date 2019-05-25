#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J forelimb_cs17
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
tophat -o /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs17 \
/home/shsr0481/Genome_Analysis/results/7_Bowtie/ref \
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719208.trim_1P.fastq.gz,\
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719209.trim_1P.fastq.gz,\
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719211.trim_1P.fastq.gz \
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719208.trim_2P.fastq.gz,\
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719209.trim_2P.fastq.gz,\
/home/shsr0481/Genome_Analysis/data/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719211.trim_2P.fastq.gz