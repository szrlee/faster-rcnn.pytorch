#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python trainval_net.py --dataset watercolor --net vgg16 \
                       --bs 4 --nw 2 --epochs 30 \
                       --lr 0.0025 --lr_decay_step 6 --lr_decay_gamma 0.1 \
                       --cuda \
                       --s 202 \
                       --dt true --pretrained_rcnn data/pretrained_rcnn/dt_watercolor/vgg16-VOC0712-VOC0712_watercolor.pth \
                       2>&1|tee ./log/watercolor/vgg16-$now.log 
