#!/bin/bash
#SBATCH --nodelist=orthrus-[2]
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --time=7-0
#SBATCH -o colord_chr1_30x_4t.out
#SBATCH -e colord_chr1_30x_4t.err
colord compress-pbraw data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq.pbraw.4t --verbose --threads 4
