#!/bin/sh
. exp/functions.sh

# 1 = d_rnn
# 2 = rnn_n_layers
# 3 = batch_size
# 4 = log_file
# 5 = source task
# 6 = destination task
# 7 = to train or not to train

for _emo_dim in "arousal" "valence"
do
    echo "transfer-learning for experiment id $4"
    rm -r preds/wilder/*
    for _feature_set in "au" "bert" "deepspectrum" "egemaps" "xception" "vggface" "vggish"
    do
        transfer_learning_with_wilder $_emo_dim $_feature_set $1 $2 $3 $4 $5
    done
    python late_fusion.py --task wilder --emo_dim $_emo_dim --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 20 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file $4
done

