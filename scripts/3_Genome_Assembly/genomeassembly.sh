#!/bin/bash

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J soapdenovo_dna_assembly_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Modules
module load bioinfo-tools
module load soapdenovo

#Your commands
/sw/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-63mer all \
-s /home/shsr0481/Genome_Analysis/scripts/3_Genome_Assembly/soapdenovo_config.txt \
-K 49 \
-o /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/