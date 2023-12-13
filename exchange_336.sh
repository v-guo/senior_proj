#!/bin/bash

#SBATCH --gpus=v100:1
#SBATCH --time=1-
#SBATCH --partition=gpu

module load miniconda
conda activate spenv

PRED_LEN=336
FREQ='d'
ROOT_PATH='./data/exchange_rate/'
FILE_NAME='exchange_rate.csv'
DIM_SIZE=8

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id exchange_rate_336_336 --model MTGNN --data custom --features M --seq_len 336 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id exchange_rate_504_336 --model MTGNN --data custom --features M --seq_len 504 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id exchange_rate_672_336 --model MTGNN --data custom --features M --seq_len 672 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

# python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id exchange_rate_240_96 --model MTGNN --data custom --features M --seq_len 240 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

