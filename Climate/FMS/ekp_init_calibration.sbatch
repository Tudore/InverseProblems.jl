#!/bin/bash

#SBATCH --time=1:00:00      # walltime
#SBATCH --ntasks=1          # number of processor cores (i.e. tasks)
#SBATCH --nodes=1           # number of nodes
#SBATCH --mem-per-cpu=6G    # memory per CPU core
#SBATCH -J "ekp_init"       # job name
#SBATCH -o "slurm_ekp_init"


#julia package management
module load julia/1.8.2 hdf5/1.10.1 netcdf-c/4.6.1 openmpi/4.0.1
julia preprocess.jl

julia init_calibration.jl
echo 'Ensemble initialized for calibration.'

