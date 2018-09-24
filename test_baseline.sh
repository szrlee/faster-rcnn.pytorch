#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
echo "clipart"
./test_pretrained_baseline.sh clipart
echo "comic"
./test_pretrained_baseline.sh comic
echo "watercolor"
./test_pretrained_baseline.sh watercolor

echo $now