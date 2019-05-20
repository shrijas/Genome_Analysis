#!bin/batch
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 200:00:00
#SBATCH -J gapcloser_SOAPdenovo
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Load Modules
module load bioinfo-tools
module load soapdenovo/2.04-r240

# command
GapCloser -b /home/shsr0481/Genome_Analysis/scripts/3_Genome_Assembly/SOAPdenovo/soapdenovo.config \
-a /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/output.scafSeq \
-o /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta	