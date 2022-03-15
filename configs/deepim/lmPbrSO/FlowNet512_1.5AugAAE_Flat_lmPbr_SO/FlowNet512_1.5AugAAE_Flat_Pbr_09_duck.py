_base_ = ["./FlowNet512_1.5AugAAE_Flat_Pbr_01_ape.py"]


OUTPUT_DIR = "output/deepim/lmPbrSO/FlowNet512_1.5AugAAE_Flat_lmPbr_SO/duck"

DATASETS = dict(TRAIN=("lm_pbr_duck_train",), TEST=("lm_real_duck_test",))

# bbnc10
# objects  duck    Avg(1)                                                                                                                                                                                     │···············································································································
# ad_2     2.25    2.25                                                                                                                                                                                       │···············································································································
# ad_5     19.72   19.72                                                                                                                                                                                      │···············································································································
# ad_10    52.68   52.68                                                                                                                                                                                      │···············································································································
# rete_2   52.02   52.02                                                                                                                                                                                      │···············································································································
# rete_5   97.56   97.56                                                                                                                                                                                      │···············································································································
# rete_10  100.00  100.00                                                                                                                                                                                     │···············································································································
# re_2     60.94   60.94                                                                                                                                                                                      │···············································································································
# re_5     97.56   97.56                                                                                                                                                                                      │···············································································································
# re_10    100.00  100.00                                                                                                                                                                                     │···············································································································
# te_2     84.13   84.13                                                                                                                                                                                      │···············································································································
# te_5     100.00  100.00                                                                                                                                                                                     │···············································································································
# te_10    100.00  100.00                                                                                                                                                                                     │···············································································································
# proj_2   86.01   86.01                                                                                                                                                                                      │···············································································································
# proj_5   98.22   98.22                                                                                                                                                                                      │···············································································································
# proj_10  100.00  100.00                                                                                                                                                                                     │···············································································································
# re       1.95    1.95                                                                                                                                                                                       │···············································································································
# te       0.01    0.01
