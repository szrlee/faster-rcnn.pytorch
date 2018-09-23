#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset pascal_voc_watercolor_0712 --net vgg16 \
                   --checksession 106 --checkepoch $1 --checkpoint 7019 \
                   --cuda \
                   2>&1|tee ./log/dt_watercolor/test/vgg16-$now.log 
