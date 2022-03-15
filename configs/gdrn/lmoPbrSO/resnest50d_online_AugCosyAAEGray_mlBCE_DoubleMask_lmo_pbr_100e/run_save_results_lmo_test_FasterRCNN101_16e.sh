#!/usr/bin/env bash
set -ex


# 1 ape
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_ape.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/ape/model_final_wo_optim-f0ef90df.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 5 can
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_can.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/can/model_final_wo_optim-ea5b9c78.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 6 cat
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_cat.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/cat/model_final_wo_optim-9931aeed.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 8 driller
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_driller.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/driller/model_final_wo_optim-bded40f0.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 9 duck
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_duck.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/duck/model_final_wo_optim-3cc3dbe6.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 10 eggbox
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_eggbox.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/eggbox/model_final_wo_optim-817002cd.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 11 glue
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_glue.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/glue/model_final_wo_optim-0b8a2e73.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"

# 12 holepuncher
./core/gdrn_modeling/save_gdrn.sh \
  configs/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e_holepuncher.py 1 \
  output/gdrn/lmoPbrSO/resnest50d_online_AugCosyAAEGray_mlBCE_DoubleMask_lmo_pbr_100e/holepuncher/model_final_wo_optim-c98281c9.pth \
  DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lmo/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lmo_pbr_16e_lmo_test.json,"
