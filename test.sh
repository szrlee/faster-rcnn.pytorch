#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset pascal_voc_0712 --net vgg16 \
                   --checksession 7 --checkepoch 24 --checkpoint 8274 \
                   --cuda \
                   2>&1|tee ./log/pretrained/test/vgg16-VOC0712-$now.log 
