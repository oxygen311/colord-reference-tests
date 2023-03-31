#!/bin/bash
#SBATCH --nodelist=orthrus-[2]
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --time=7-0
#SBATCH -o colord_chr1_30x_16t_ref.out
#SBATCH -e colord_chr1_30x_16t_ref.err
colord compress-pbraw data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq.pbraw.16t.ref --verbose --threads 16 --reference-genome data/hg/chr1/hg38.chr1.fna
