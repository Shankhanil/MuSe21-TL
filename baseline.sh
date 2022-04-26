#!/bin/sh
. exp/functions.sh

# 1 = d_rnn
# 2 = rnn_n_layers
# 3 = batch_size
# 4 = log_file
# 5 = source task
# 6 = destination task
# 7 = to train or not to train

for _task in "sent" "stress" "wilder"
do
    for _emo_dim in "arousal" "valence"
    do
        echo "training for experiment id $4"
        rm -r preds/$_task/*
        for _feature_set in "au" "bert" "deepspectrum" "egemaps" "xception" "vggface" "vggish"
        do
            train $_task $_emo_dim $_feature_set $1 $2 $3 $4
        done
        # insert late fusion code
        python late_fusion.py --task $_task --emo_dim $_emo_dim --preds_path preds --d_rnn 32 --rnn_n_layers 4 --epochs 20 --batch_size 64 --lr 0.001 --n_seeds 4 --win_len 200 --hop_len 100 --use_gpu --predict --tldr_log_file $4
    done
done


