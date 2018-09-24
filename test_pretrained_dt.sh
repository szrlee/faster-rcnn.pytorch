#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset $1 --net vgg16 \
                   --dt true --pretrained_rcnn data/pretrained_rcnn/dt_$1/vgg16-VOC0712-VOC0712_$1.pth \
                   --cuda \
                   2>&1|tee ./log/test_pretrained_dt/$1-vgg16-$now.log 
