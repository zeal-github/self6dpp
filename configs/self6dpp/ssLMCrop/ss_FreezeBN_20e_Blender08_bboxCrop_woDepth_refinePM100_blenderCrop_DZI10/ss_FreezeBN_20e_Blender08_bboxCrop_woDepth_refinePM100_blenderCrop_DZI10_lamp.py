_base_ = ["ss_FreezeBN_20e_Blender08_bboxCrop_woDepth_refinePM100_blenderCrop_DZI10_ape.py"]

# refiner_cfg_path = "configs/_base_/self6dpp_refiner_base.py"

OUTPUT_DIR = "output/self6dpp/ssLMCrop/FreezeBN_20e_Blender08_bboxCrop_woDepth_refinePM100_blenderCrop_DZI10/lamp"

DATASETS = dict(
    TRAIN=("lm_crop_lamp_train",),  # real data
    TRAIN2=("lm_blender_lamp_train",),  # synthetic data
    TEST=("lm_crop_lamp_test",),
)


MODEL = dict(
    # synthetically trained model
    WEIGHTS="output/gdrn/lm_crop_blender/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_bboxCrop_DZI10_lm_blender_100e/lamp/model_final_wo_optim-bf52eba3.pth"
)
