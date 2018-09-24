#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
echo "clipart"
./test_pretrained_dt.sh clipart
echo "comic"
./test_pretrained_dt.sh comic
echo "watercolor"
./test_pretrained_dt.sh watercolor

echo $now