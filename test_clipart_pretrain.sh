#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset clipart --net vgg16 \
                   --dt true --pretrained_rcnn data/pretrained_rcnn/dt_clipart/vgg16-VOC0712-VOC0712_clipart.pth
                   --cuda \
                   2>&1|tee ./log/clipart/test/vgg16-$now.log 
