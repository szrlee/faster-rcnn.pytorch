#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python trainval_net.py --dataset pascal_voc_clipart_0712 --net vgg16 \
                       --bs 4 --nw 2 --epochs 30 \
                       --lr 0.0025 --lr_decay_step 6 --lr_decay_gamma 0.1 \
                       --cuda \
                       --s 102 \
                       --dt true --pretrained_rcnn data/pretrained_rcnn/vgg16-VOC0712.pth \
                       2>&1|tee ./log/dt_clipart/vgg16-$now.log 
