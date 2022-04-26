#python main.py --task sent --emo_dim arousal --feature_set bert --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds
#python main.py --task sent --emo_dim valence --feature_set bert --normalize --d_rnn 64 --rnn_n_layers 4 --lr 0.0001 --epochs 100 --batch_size 1024 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds

sh test.sh 64 4 1024 exp_with_bert_notrain sent wilder
sh test.sh 64 4 1024 exp_with_bert_notrain sent stress
