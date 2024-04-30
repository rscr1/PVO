
# checkpoint
-  Download the panFPN model from google drive: [panFPN_checkpoint](https://drive.google.com/drive/folders/1q1-uVxpEmaV19Bm2Qrl2f6T5qnXE1eia) and save to checkpoints/panFPN.pth
- Download the vo model from google drive:[vo_checkpoint](https://drive.google.com/drive/folders/1q1-uVxpEmaV19Bm2Qrl2f6T5qnXE1eia) and save to checkpoints/vkitti2_dy_train_semiv4_080000.pth 

# 1. Use Dockerfile (Edit file if you need)
```Bash
docker build -t pvo:v0 -f Dockerfile .
```

# 2. Use run_container.sh (Edit file if you need)
```Bash
sh run_container.sh
```

# vkitti 15-deg-left dataset
- download [Virtual_KITTI2](https://europe.naverlabs.com/research/computer-vision/proxy-virtual-worlds-vkitti-2/) into datasets/Virtual_KITTI2
## Expected dataset structure for Virtual_KITTI2
```
Virtual_KITTI2/
  Scene01/
    15-deg-left/
      frames/
        backwardFlow/
        classSegmentation/
        depth/
        forwardFlow/
        instanceSegmentation/
        rgb/
      bbox.txt
      colors.txt
      extrinsic.txt
      info.txt
      intristic.txt
      pose.txt
    15-deg-right/
    15-deg-right/
    30-deg-left/
    30-deg-right/
    clone/
  Scene02/
  Scene06/
  Scene18/
  Scene20/
```
- generate annotation for training and evaluating
```Bash
sh tools/datasets/generate_vkitti_datasets.sh
python tools/datasets/generate_dynamic_masks.py
```

