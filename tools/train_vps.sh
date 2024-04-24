python -W ignore VPS_Module/tools/train_net.py \
--config-file VPS_Module/configs/COCO-PanopticSegmentation/panoptic_fpn_R_50_3x_vkitti_511.yaml --num-gpu 2 \
MODEL.WEIGHTS checkpoints/panFPN.pth \
OUTPUT_DIR output/vps_training/