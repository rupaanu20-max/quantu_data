#!/bin/bash
BATCH -J RuFeO3_vc-relax
#SBATCH -o RuFeO3_vc-relax.out
#SBATCH -e RuFeO3_vc-relax.err
#SBATCH -p standard
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --time=04:00:00

# Load environment
module purge
module load quantum-espresso/7.1

cd $SLURM_SUBMIT_DIR

mpirun pw.x -i RuFeO3_vc-relax.in > RuFeO3_vc-relax.out
