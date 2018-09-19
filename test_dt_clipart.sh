#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset pascal_voc_clipart_0712 --net vgg16 \
                   --checksession 102 --checkepoch 19 --checkpoint 7019 \
                   --cuda \
                   2>&1|tee ./log/dt_clipart/test/vgg16-$now.log 
