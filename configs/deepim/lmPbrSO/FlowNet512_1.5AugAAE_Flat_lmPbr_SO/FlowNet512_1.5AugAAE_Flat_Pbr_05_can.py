_base_ = ["./FlowNet512_1.5AugAAE_Flat_Pbr_01_ape.py"]


OUTPUT_DIR = "output/deepim/lmPbrSO/FlowNet512_1.5AugAAE_Flat_lmPbr_SO/can"

DATASETS = dict(TRAIN=("lm_pbr_can_train",), TEST=("lm_real_can_test",))

# bbnc5
# objects  can     Avg(1)                                                                                                                                                                                     │···············································································································
# ad_2     26.08   26.08                                                                                                                                                                                      │···············································································································
# ad_5     93.80   93.80                                                                                                                                                                                      │···············································································································
# ad_10    99.90   99.90                                                                                                                                                                                      │···············································································································
# rete_2   97.83   97.83                                                                                                                                                                                      │···············································································································
# rete_5   100.00  100.00                                                                                                                                                                                     │···············································································································
# rete_10  100.00  100.00                                                                                                                                                                                     │···············································································································
# re_2     97.93   97.93                                                                                                                                                                                      │···············································································································
# re_5     100.00  100.00                                                                                                                                                                                     │···············································································································
# re_10    100.00  100.00                                                                                                                                                                                     │···············································································································
# te_2     99.80   99.80                                                                                                                                                                                      │···············································································································
# te_5     100.00  100.00                                                                                                                                                                                     │···············································································································
# te_10    100.00  100.00                                                                                                                                                                                     │···············································································································
# proj_2   52.17   52.17                                                                                                                                                                                      │···············································································································
# proj_5   98.82   98.82                                                                                                                                                                                      │···············································································································
# proj_10  100.00  100.00                                                                                                                                                                                     │···············································································································
# re       0.91    0.91                                                                                                                                                                                       │···············································································································
# te       0.01    0.01
