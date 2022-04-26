# d_rnn = 128, 256, 512, 1024
sh script.sh 128 4 1024 exp_128_4_1024 sent wilder
sh script.sh 256 4 1024 exp_256_4_1024 sent wilder
sh script.sh 512 4 1024 exp_512_4_1024 sent wilder
sh script.sh 1024 4 1024 exp_1024_4_1024 sent wilder

sh script.sh 128 4 1024 exp_128_4_1024 sent stress
sh script.sh 256 4 1024 exp_256_4_1024 sent stress
sh script.sh 512 4 1024 exp_512_4_1024 sent stress
sh script.sh 1024 4 1024 exp_1024_4_1024 sent stress


# rnn_n_layer = 2, 8, 16, 32
#sh script.sh 64 2 1024 exp_64_2_1024 sent wilder
sh script.sh 64 8 1024 exp_64_8_1024 sent wilder
sh script.sh 64 16 1024 exp_64_16_1024 sent wilder
sh script.sh 64 32 1024 exp_64_32_1024 sent wilder

sh script.sh 64 2 1024 exp_64_2_1024 sent stress
sh script.sh 64 8 1024 exp_64_8_1024 sent stress
sh script.sh 64 16 1024 exp_64_16_1024 sent stress
sh script.sh 64 32 1024 exp_64_32_1024 sent stress

