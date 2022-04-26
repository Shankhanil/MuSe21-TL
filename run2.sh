#!/bin/sh

echo "---------------------------------------"
echo "Experiment 1, $2"
python main.py --task $1 --emo_dim $2 --feature_set au --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set egemaps --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python main.py --task $1 --emo_dim $2 --feature_set bert --normalize --d_rnn 64 --rnn_n_layers 2 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 5 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp_64_2_1024_lf.txt
python late_fusion.py --task $1 --emo_dim $2 --preds_path preds --d_rnn 32 --rnn_n_layers 2 --epochs 100 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file exp_64_2_1024_lf.txt
echo "---------------------------------------"

