#!/bin/bash

#SBATCH --gpus=v100:1
#SBATCH --time=6:00:00
#SBATCH --partition=gpu

mamba init
mamba activate spenv

python run.py --is_training 1 --root_path ./data/electricity/ --data_path electricity.csv --model_id electricity_96_96 --model MTGNN --data custom --features M --seq_len 96 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 321 --dec_in 321 --c_out 321 --des 'Exp' --itr 10

# python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_96_96 --model MTGNN --data ETTh1 --features M --seq_len 96 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10
