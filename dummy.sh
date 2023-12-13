#!/bin/bash

#SBATCH --gpus=rtx5000:2
#SBATCH --time=6:00:00
#SBATCH --partition=gpu

mamba init
mamba activate spenv

nvidia-smi
python dummy.py

