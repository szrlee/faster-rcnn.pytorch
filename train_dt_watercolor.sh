#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python trainval_net.py --dataset pascal_voc_watercolor_0712 --net vgg16 \
                       --bs 4 --nw 2 --epochs 60 \
                       --lr 0.0001 --lr_decay_step 20 --lr_decay_gamma 0.5 \
                       --cuda \
                       --s 107 \
                       --dt true --pretrained_rcnn data/pretrained_rcnn/vgg16-VOC0712.pth \
                       2>&1|tee ./log/dt_watercolor/vgg16-$now.log 
