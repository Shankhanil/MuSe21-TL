#!/bin/sh

# $1 is emo dim
# $2 is feature set
# $3 is d_rnn,
# $4 rnn_n_layer
# $5 batch_size
# $6 is exp name


train () { 
   # $1 is emo dim
   # $2 is feature set
   # $3 is d_rnn,
   # $4 rnn_n_layer
   # $5 batch_size
   # $6 is exp name
   python main.py --task $1 --emo_dim $2 --feature_set $3 --normalize --d_rnn $4 --rnn_n_layers $5 --lr 0.0001 --epochs 100 --batch_size $6 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --tldr_log_file $7
   # echo $1 $2 $3 $4 $5 $6
}


transfer_learning_with_wilder () { 
   # $1 is emo dim
   # $2 is feature set
   # $3 is d_rnn,
   # $4 rnn_n_layer
   # $5 batch_size
   # $6 is exp name
   # $7 source
   # arousal, au, 64, 4, 1024, log_file, sent, wilder 
   # python main.py --task wilder --emo_dim $1 --feature_set $2 --normalize --d_rnn $3 --rnn_n_layers $4 --lr 0.0001 --epochs 100 --batch_size $5 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task $6 --model_path [$1]_[$2]_[$3_$4_False]_[0.0001_$5]/best_model.pth --tldr_log_file $7
   python main.py --task wilder --emo_dim $1 --feature_set $2 --normalize --d_rnn $3 --rnn_n_layers $4 --lr 0.0001 --epochs 100 --batch_size $5 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task $7 --model_path [$1]_[$2]_[$3_$4_False]_[0.0001_$5]/best_model.pth --tldr_log_file $6
}

transfer_learning () {
 python main.py --task $8 --emo_dim $1 --feature_set $2 --normalize --d_rnn $3 --rnn_n_layers $4 --lr 0.0001 --epochs 100 --batch_size $5 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --cache --save --save_path preds --transfer_learning --source_task $6 --model_path [$2]_[$1]_[$3_$4_False]_[0.0001_$5]/best_model.pth --tldr_log_file $7
}
