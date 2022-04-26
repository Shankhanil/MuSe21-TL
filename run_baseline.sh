# d_rnn = 128, 256, 512, 1024
sh baseline.sh 128 4 1024 baseline_exp128_4_1024 
sh baseline.sh 256 4 1024 baseline_exp256_4_1024 
sh baseline.sh 512 4 1024 baseline_exp512_4_1024 
sh baseline.sh 1024 4 1024 baseline_exp1024_4_1024 

sh baseline.sh 128 4 1024 baseline_exp128_4_1024 
sh baseline.sh 256 4 1024 baseline_exp256_4_1024 
sh baseline.sh 512 4 1024 baseline_exp512_4_1024 
sh baseline.sh 1024 4 1024 baseline_exp1024_4_1024 


# rnn_n_layer = 2, 8, 16, 32
#sh baseline.sh 64 2 1024 baseline_exp64_2_1024 
sh baseline.sh 64 8 1024 baseline_exp64_8_1024 
sh baseline.sh 64 16 1024 baseline_exp64_16_1024 
sh baseline.sh 64 32 1024 baseline_exp64_32_1024 

sh baseline.sh 64 2 1024 baseline_exp64_2_1024 
sh baseline.sh 64 8 1024 baseline_exp64_8_1024 
sh baseline.sh 64 16 1024 baseline_exp64_16_1024 
sh baseline.sh 64 32 1024 baseline_exp64_32_1024 


