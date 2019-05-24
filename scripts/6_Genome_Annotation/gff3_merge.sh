#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J gff3_merging
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se

# Load modules
module load bioinfo-tools
module load maker

#Your commands
gff3_merge -d ref_genome_unzipped_master_datastore_index.log