#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset pascal_voc --net vgg16 \
                   --checksession 6 --checkepoch 6 --checkpoint 2504 \
                   --cuda \
                   2>&1|tee ./log/pretrained/test/vgg16-$now.log 
