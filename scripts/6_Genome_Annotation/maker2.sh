#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J maker_annotation_step1
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

# Load modules
module load bioinfo-tools
module load maker

#Your commands
cd /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation

maker -CTL