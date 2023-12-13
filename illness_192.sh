#!/bin/bash

#SBATCH --gpus=v100:1
#SBATCH --time=1-
#SBATCH --partition=gpu

module load miniconda
conda activate spenv

PRED_LEN=192
FREQ='w'
ROOT_PATH='./data/illness/'
FILE_NAME='national_illness.csv'
DIM_SIZE=7

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id illness_192_192 --model MTGNN --data custom --features M --seq_len 192 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id illness_288_192 --model MTGNN --data custom --features M --seq_len 288  --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id illness_384_192 --model MTGNN --data custom --features M --seq_len 384 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

# python3 run.py --is_training 1 --root_path $ROOT_PATH --data_path $FILE_NAME --freq $FREQ --model_id illness_240_96 --model MTGNN --data custom --features M --seq_len 240 --label_len 0 --pred_len $PRED_LEN --e_layers 2 --d_layers 1 --factor 3 --enc_in $DIM_SIZE --dec_in $DIM_SIZE --c_out $DIM_SIZE --des 'Exp' --itr 10

