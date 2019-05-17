#!bin/batch
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J gapcloser_SOAPdenovo
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Load Modules
module load bioinfo-tools
module load soapdenovo/2.04-r240

#Your comments
/sw/apps/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/GapCloser \
-b /home/shsr0481/GenomeAnalysis/scripts/3_Genome_Assembly/SOAPdenovo/soapdenovo_config.txt \
-a /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/*.scafSeq \
-o /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/Closedgaps_gaps.fasta