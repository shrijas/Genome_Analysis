#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J htseq_differential
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se


# Load modules
module load bioinfo-tools
module load htseq

# my .gff file had fasta appended at the end. (fasta started at line 5574)
# remove the fasta part and create a new file:
head -5574 /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped.all.gff > /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff

#Total count
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs15/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs16/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs17/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs15/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs16/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs17/accepted_hits.bam \
/home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/htseq_results.txt

# cs15 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs15/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs15_forelimb_htseqresults.txt

# cs15 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs15/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs15_hindlimb_htseqresults.txt

# cs16 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/forelimb/cs16/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs16_forelimb_htseqresults.txt

# cs16 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs16/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs16_hindlimb_htseqresults.txt

# cs17 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs17/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs17_forelimb_htseqresults.txt

# cs17 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/shsr0481/Genome_Analysis/results/8_Tophat_Aligner/hindlimb/cs17/accepted_hits.bam /home/shsr0481/Genome_Analysis/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/shsr0481/Genome_Analysis/results/9_Differential_Expression/cs17_hindlimb_htseqresults.txt