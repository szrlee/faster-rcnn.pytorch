#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
python test_net.py --dataset clipart --net vgg16 \
                   --checksession 200 --checkepoch $1 --checkpoint 248 \
                   --cuda \
                   2>&1|tee ./log/clipart/test/vgg16-$now.log 
