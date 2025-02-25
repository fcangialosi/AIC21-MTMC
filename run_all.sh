MCMT_CONFIG_FILE="aic_all.yml"

cd detector/
python gen_images_aic.py ${MCMT_CONFIG_FILE} || exit 1

cd yolov5/
bash gen_det.sh ${MCMT_CONFIG_FILE} || exit 1

# #### Extract reid feautres.####
# ../../reid/
# python extract_image_feat.py "aic_reid1.yml"
# python extract_image_feat.py "aic_reid2.yml"
# python extract_image_feat.py "aic_reid3.yml"
cd ../../
python reid.py ${MCMT_CONFIG_FILE} || exit 1
cd reid/
python merge_reid_feat.py ${MCMT_CONFIG_FILE} || exit 1

# #### MOT. ####
cd ../tracker/MOTBaseline
bash run_aic.sh ${MCMT_CONFIG_FILE}
# wait
# #### Get results. ####
cd ../../reid/reid-matching/tools
python trajectory_fusion.py ${MCMT_CONFIG_FILE}
python sub_cluster.py ${MCMT_CONFIG_FILE}
# python gen_res.py ${MCMT_CONFIG_FILE}

# #### Vis. (optional) ####
# # python viz_mot.py ${MCMT_CONFIG_FILE}
# # python viz_mcmt.py ${MCMT_CONFIG_FILE}
