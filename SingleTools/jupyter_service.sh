#!/bin/bash
#SBATCH -n 20
#SBATCH -N 1
#SBATCH -A ######
#SBATCH -p dell
#SBATCH -t 2-12
#SBATCH -J ######
#SBATCH -o logs/SC_arches_train%j.out
#SBATCH -e logs/SC_arches_train%j.err
module purge
module use #####
module load Singularity/default

singularity exec --bind :/workspace SingleTools.sif bash -c "cd /workspace && jupyter lab --port 3333 --ip=0.0.0.0 --allow-root --no-browser"
