# mla-node
to learning FlashMLA

# 本机环境
    笔记本Ubuntu 20.04，NVIDIA GeForce RTX 3070 Ti Laptop GPU

# 快速开始
```bash
make
```

# 运行结果
```
b=128, s_q=1, mean_sk=4096, h_q=16, h_kv=1, d=192, dv=128, causal=True, varlen=False
out: cos_diff=1.5247754181491047e-06, RMSE=0.00013360916266193473, amax_diff=0.001011490821838379
lse: cos_diff=2.3314683517128287e-15, RMSE=6.082156786906287e-07, amax_diff=1.9073486328125e-06
0.989 ms, 5 TFLOPS, 205 GB/s
b=128, s_q=1, mean_sk=4096, h_q=16, h_kv=1, d=192, dv=128, causal=True, varlen=True
out: cos_diff=3.092969531603984e-07, RMSE=0.0001359011876326387, amax_diff=0.0011692941188812256
lse: cos_diff=2.4424906541753444e-15, RMSE=6.164488422965712e-07, amax_diff=1.9073486328125e-06
0.820 ms, 7 TFLOPS, 248 GB/s
b=128, s_q=2, mean_sk=4096, h_q=16, h_kv=1, d=192, dv=128, causal=True, varlen=False
out: cos_diff=1.516739058349259e-06, RMSE=0.00013365299500154196, amax_diff=0.0010597705841064453
lse: cos_diff=2.3314683517128287e-15, RMSE=6.17814434815284e-07, amax_diff=1.9073486328125e-06
0.793 ms, 14 TFLOPS, 257 GB/s
```

# Debug调试
```
make debug
```


## 参考
    - [FlashMLA](https://github.com/deepseek-ai/FlashMLA)
    - [FlashMLA](https://github.com/pzhao-eng/FlashMLA)

