#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset $1 --net vgg16 \
                   --dt true --pretrained_rcnn data/pretrained_rcnn/vgg16-VOC0712.pth \
                   --cuda \
                   2>&1|tee ./log/test_pretrained_baseline/$1/vgg16-$now.log 
