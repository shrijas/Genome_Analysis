#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J sorting_bam
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# sort the bams
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs15/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/forelimb_cs15.bam
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs16/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/forelimb_cs16.bam
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs17/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/forelimb_cs17.bam
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs15/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/hindlimb_cs15.bam
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs16/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/hindlimb_cs16.bam
samtools sort -n /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs17/accepted_hits.bam \
> /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/hindlimb_cs17.bam