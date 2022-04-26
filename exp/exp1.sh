#!/bin/sh

rm -r preds/sent/*
rm -r preds/wilder/*
'''
echo "---------------------------------------"
echo "Experiment 1, arousal"
python main.py --task sent --emo_dim arousal --feature_set au --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python main.py --task sent --emo_dim arousal --feature_set egemaps --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python main.py --task sent --emo_dim arousal --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python main.py --task sent --emo_dim arousal --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python main.py --task sent --emo_dim arousal --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python main.py --task sent --emo_dim arousal --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_arousal
python late_fusion.py --task sent --emo_dim arousal --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 100 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file exp1_arousal
'''
echo "------------transfer-learning-----------"
python main.py --task wilder --emo_dim arousal --feature_set au --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [au]_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal 
python main.py --task wilder --emo_dim arousal --feature_set egemaps --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [egemaps]_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal
python main.py --task wilder --emo_dim arousal --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [vggface_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal
python main.py --task wilder --emo_dim arousal --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [vggish]_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal
python main.py --task wilder --emo_dim arousal --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [xception]_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal
python main.py --task wilder --emo_dim arousal --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [deepspectrum]_[arousal]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_arousal
python late_fusion.py --task wilder --emo_dim arousal --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 20 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file exp1_arousal
echo "---------------------------------------"
'''
rm -r preds/sent/*

rm -r preds/wilder/*

echo "Experiment 1, valence"
python main.py --task sent --emo_dim valence --feature_set au --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python main.py --task sent --emo_dim valence --feature_set egemaps --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python main.py --task sent --emo_dim valence --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python main.py --task sent --emo_dim valence --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python main.py --task sent --emo_dim valence --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python main.py --task sent --emo_dim valence --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file exp1_valence
python late_fusion.py --task sent --emo_dim valence --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 100 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file exp1_valence
echo "------------transfer-learning-----------"
python main.py --task wilder --emo_dim valence --feature_set au --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [au]_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence 
python main.py --task wilder --emo_dim valence --feature_set egemaps --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [egemaps]_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence
python main.py --task wilder --emo_dim valence --feature_set vggface --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [vggface_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence
python main.py --task wilder --emo_dim valence --feature_set vggish --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [vggish]_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence
python main.py --task wilder --emo_dim valence --feature_set xception --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [xception]_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence
python main.py --task wilder --emo_dim valence --feature_set deepspectrum --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task sent --model_path [deepspectrum]_[valence]_[64_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file exp1_valence
python late_fusion.py --task wilder --emo_dim valence --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 100 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file exp1_valence
'''
