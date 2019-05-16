#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc_chip_seq_data
#SBATCH --mail-type=ALL
#SBATCH --mail-user Shrija.Srinivasan.0481@student.uu.se
#Load Modules
module load bioinfo-tools
module load trimmomatic

#Comments
declare -i count
count=0
	for value1 in /home/shsr0481/Genome_Analysis/raw_data/sel3/wgs_data/*.fastq.gz
		do
			echo "$count"

		if [ $((count % 2)) == 0 ]; then
			#statements
			echo "Running $value1 ..."
			echo "$((value1+1))"
			value2=$((value1+1))
			echo "Running ${!value2}"
		fi
		let count++
	done