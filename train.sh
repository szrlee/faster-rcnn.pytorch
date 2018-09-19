#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python trainval_net.py --dataset pascal_voc_0712 --net vgg16 \
                       --bs 4 --nw 2 --epochs 30 \
                       --lr 0.0025 --lr_decay_step 6 --lr_decay_gamma 0.1 \
                       --cuda \
                       --s 8 \
                       2>&1|tee ./log/pretrained/vgg16-VOC0712-$now.log 
