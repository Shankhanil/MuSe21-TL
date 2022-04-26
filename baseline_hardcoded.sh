

python main.py --task stress --emo_dim valence --feature_set bert --normalize --d_rnn 128 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 1 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds 

python main.py --task stress --emo_dim valence --feature_set deepspectrum --normalize --d_rnn 128 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 1 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds 

python main.py --task stress --emo_dim valence --feature_set egemaps --normalize --d_rnn 128 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 1 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds 
# --transfer_learning --source_task sent --model_path [egemaps]_[valence]_[128_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file baseline_hardcoded_128_4.txt

python main.py --task stress --emo_dim valence --feature_set vggface --normalize --d_rnn 128 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 1 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds 
# --transfer_learning --source_task sent --model_path [vggface]_[valence]_[128_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file baseline_hardcoded_128_4.txt

python main.py --task stress --emo_dim valence --feature_set vggish --normalize --d_rnn 128 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 1 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds 
# --transfer_learning --source_task sent --model_path [vggish]_[valence]_[128_4_False]_[0.0001_1024]/best_model.pth --tldr_log_file baseline_hardcoded_128_4.txt
