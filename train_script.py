#!/bin/sh

echo "Training sent models for Valence"

# removing any remaining preds
rm -r preds/sent/*

# training for all features
python main.py --task sent --emo_dim valence --feature_set au --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

python main.py --task sent --emo_dim valence --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

python main.py --task sent --emo_dim valence --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

python main.py --task sent --emo_dim valence --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

python main.py --task sent --emo_dim valence --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

python main.py --task sent --emo_dim valence --feature_set bert --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 512 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

