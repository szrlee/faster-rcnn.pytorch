#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
./test_pretrained_dt.sh clipart

./test_pretrained_dt.sh comic

./test_pretrained_dt.sh watercolor

echo $now