#!/bin/bash

#SBATCH --gpus=v100:1
#SBATCH --time=1-
#SBATCH --partition=gpu

sp

module load miniconda

conda activate spenv

PRED_LEN=192
FREQ=h
ROOT_PATH=./data/ETT-small/
FILE_NAME=ETTh2.csv
DIM_SIZE=7

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTh2_192_192 --model MTGNN --data ETTh2 --features M --seq_len 192 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTh2_288_192 --model MTGNN --data ETTh2 --features M --seq_len 288 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4	

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTh2_384_192 --model MTGNN --data ETTh2 --features M --seq_len 384 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

#python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id ETTh2_240_192 --model MTGNN --data ETTh2 --features M --seq_len 240 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10 --batch_size 4

