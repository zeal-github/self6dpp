#!/usr/bin/env bash
set -ex

# 1 ape
./core/gdrn_modeling/test_gdrn.sh \
    configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_ape.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/ape/model_final_wo_optim-e8c99c96.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 2 benchvise
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_benchvise.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/benchvise/model_final_wo_optim-85b3563e.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 4 camera
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_camera.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/camera/model_final_wo_optim-1b281dbe.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 5 can
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_can.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/can/model_final_wo_optim-53ea56ee.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 6 cat
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_cat.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/cat/model_final_wo_optim-f38cfafd.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 8 driller
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_driller.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/driller/model_final_wo_optim-4cfc7d64.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 9 duck
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_duck.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/duck/model_final_wo_optim-0bde58bb.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 10 eggbox
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_eggbox_Rsym.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/eggbox_Rsym/model_final_wo_optim-d0656ca7.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 11 glue
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_glue_Rsym.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/glue_Rsym/model_final_wo_optim-324d8f16.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 12 holepuncher
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_holepuncher.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/holepuncher/model_final_wo_optim-eab19662.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 13 iron
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_iron.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/iron/model_final_wo_optim-025a740e.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 14 lamp
./core/gdrn_modeling/test_gdrn.sh  configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_lamp.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/lamp/model_final_wo_optim-34042758.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"

# 15 phone
./core/gdrn_modeling/test_gdrn.sh configs/gdrn/lmPbrSingleObj/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_SO/resnest50d_a6_AugCosyAAEGary_BG05_mlBCE_lm_pbr_100e_phone.py \
    0 \
    output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/phone/model_final_wo_optim-525a29f8.pth \
    DATASETS.DET_FILES_TEST="datasets/BOP_DATASETS/lm/test/test_bboxes/faster_R101_FPN_AugCosyAAE_HalfAnchor_lm_pbr_16e_lm_13_test.json,"
