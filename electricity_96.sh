#!/bin/bash

#SBATCH --gpus=rtx2080ti:1
#SBATCH --time=1-
#SBATCH --partition=gpu

module load miniconda

conda activate spenv

PRED_LEN=96
ROOT_PATH='./data/electricity/'
FILE_NAME='electricity.csv'
DIM_SIZE=321
BATCH_SIZE=8

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --model_id electricity_96_96 --model MTGNN --data custom --features M --seq_len 96 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size $BATCH_SIZE

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --model_id electricity_144_96 --model MTGNN --data custom --features M --seq_len 144 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size $BATCH_SIZE

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --model_id electricity_192_96 --model MTGNN --data custom --features M --seq_len 192 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size $BATCH_SIZE

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --model_id electricity_240_96 --model MTGNN --data custom --features M --seq_len 240 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size $BATCH_SIZE

