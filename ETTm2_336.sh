#!/bin/bash

#SBATCH --gpus=v100:1
#SBATCH --time=1-
#SBATCH --partition=gpu

sp

module load miniconda

conda activate spenv

PRED_LEN=336
FREQ=t
ROOT_PATH=./data/ETT-small/
FILE_NAME=ETTm2.csv
DIM_SIZE=7

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTm2_336_336 --model MTGNN --data ETTm2 --features M --seq_len 336 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTm2_504_336 --model MTGNN --data ETTm2 --features M --seq_len 504 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4	

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTm2_672_336 --model MTGNN --data ETTm2 --features M --seq_len 672 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

#python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTm2_240_336 --model MTGNN --data ETTm2 --features M --seq_len 240 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

