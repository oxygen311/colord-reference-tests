#!/bin/bash
#SBATCH --nodelist=orthrus-[2]
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=7-0
#SBATCH -o colord_chr1_30x_8t.out
#SBATCH -e colord_chr1_30x_8t.err
colord compress-pbraw data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq data/hg/chr1/MGISEQ2000__HG004_sub30_q4.chr1.fq.pbraw.8t --verbose --threads 8
