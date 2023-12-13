#!/bin/bash

#SBATCH --gpus=rtx2080ti:4
#SBATCH --time=1-
#SBATCH --partition=gpu

mamba init
mamba activate spenv

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_96_96_ver2 --model MTGNN --data ETTh1 --features M --seq_len 96 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_144_96 --model MTGNN --data ETTh1 --features M --seq_len 144 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_192_96 --model MTGNN --data ETTh1 --features M --seq_len 192 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_240_96 --model MTGNN --data ETTh1 --features M --seq_len 240 --label_len 0 --pred_len 96 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10


python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_192_192 --model MTGNN --data ETTh1 --features M --seq_len 192 --label_len 0 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_288_192 --model MTGNN --data ETTh1 --features M --seq_len 288 --label_len 0 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_384_192 --model MTGNN --data ETTh1 --features M --seq_len 384 --label_len 0 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_720_192 --model MTGNN --data ETTh1 --features M --seq_len 720 --label_len 0 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10


python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_336_336 --model MTGNN --data ETTh1 --features M --seq_len 336 --label_len 0 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_720_336 --model MTGNN --data ETTh1 --features M --seq_len 720 --label_len 0 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_1008_336 --model MTGNN --data ETTh1 --features M --seq_len 1008 --label_len 0 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10


python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_720_720 --model MTGNN --data ETTh1 --features M --seq_len 720 --label_len 0 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_1080_720 --model MTGNN --data ETTh1 --features M --seq_len 1080 --label_len 0 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10

python run.py --is_training 1 --root_path ./data/ETT-small/ --data_path ETTh1.csv --model_id ETTh1_1440_720 --model MTGNN --data ETTh1 --features M --seq_len 1440 --label_len 0 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 7 --dec_in 7 --c_out 7 --des 'Exp' --itr 10
