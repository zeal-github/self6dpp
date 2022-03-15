import os.path as osp
import sys
import numpy as np
import mmcv
from tqdm import tqdm
from functools import cmp_to_key

cur_dir = osp.dirname(osp.abspath(__file__))
PROJ_ROOT = osp.normpath(osp.join(cur_dir, "../../../../"))
sys.path.insert(0, PROJ_ROOT)
from lib.pysixd import inout, misc
from lib.utils.bbox_utils import xyxy_to_xywh
from lib.utils.utils import dprint, wprint


id2obj = {
    2: "benchvise",
    7: "driller",
    21: "phone",
}  # bop 2, hb-v1:1  # bop 7, hb-v1:6  # bop 21, hb-v1:20
obj_num = len(id2obj)
obj2id = {_name: _id for _id, _name in id2obj.items()}


if __name__ == "__main__":
    new_res_path = osp.join(
        PROJ_ROOT,
        "datasets/hb_bench_driller_phone/init_poses/",
        "resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e_so_GdrnPose_with_yolov4_pbr_bbox_hbBdpAll.json",
    )
    if osp.exists(new_res_path):
        wprint("{} already exists! overriding!".format(new_res_path))

    out_root = "output/gdrn/lm_pbr/resnest50d_a6_AugCosyAAEGray_BG05_mlBCE_lm_pbr_100e/"
    pred_paths = [
        "benchvise/inference_model_final_wo_optim-85b3563e/hb_bdp_benchvise_all_lmK/results.pkl",
        "driller/inference_model_final_wo_optim-4cfc7d64/hb_bdp_driller_all_lmK/results.pkl",
        "phone/inference_model_final_wo_optim-525a29f8/hb_bdp_phone_all_lmK/results.pkl",
    ]
    obj_names = [obj for obj in obj2id]

    new_res_dict = {}
    for obj_name, pred_name in zip(obj_names, pred_paths):
        assert obj_name in pred_name, "{} not in {}".format(obj_name, pred_name)

        pred_path = osp.join(out_root, pred_name)
        assert osp.exists(pred_path), pred_path
        print(obj_name, pred_path)

        # pkl  scene_im_id key, list of preds
        preds = mmcv.load(pred_path)

        for scene_im_id, pred_list in preds.items():
            for pred in pred_list:
                obj_id = pred["obj_id"]
                score = pred["score"]
                bbox_est = pred["bbox_est"]  # xyxy
                bbox_est_xywh = xyxy_to_xywh(bbox_est)

                R_est = pred["R"]
                t_est = pred["t"]
                pose_est = np.hstack([R_est, t_est.reshape(3, 1)])
                cur_new_res = {
                    "obj_id": obj_id,
                    "score": float(score),
                    "bbox_est": bbox_est_xywh.tolist(),
                    "pose_est": pose_est.tolist(),
                }
                if scene_im_id not in new_res_dict:
                    new_res_dict[scene_im_id] = []
                new_res_dict[scene_im_id].append(cur_new_res)

    def mycmp(x, y):
        # compare two scene_im_id
        x_scene_id = int(x[0].split("/")[0])
        y_scene_id = int(y[0].split("/")[0])
        if x_scene_id == y_scene_id:
            x_im_id = int(x[0].split("/")[1])
            y_im_id = int(y[0].split("/")[1])
            return x_im_id - y_im_id
        else:
            return x_scene_id - y_scene_id

    mmcv.mkdir_or_exist(osp.dirname(new_res_path))

    new_res_dict_sorted = dict(sorted(new_res_dict.items(), key=cmp_to_key(mycmp)))
    inout.save_json(new_res_path, new_res_dict_sorted)
    dprint()
    dprint("new result path: {}".format(new_res_path))
