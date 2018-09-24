#!/usr/bin/env sh
now=$(date +"%Y%m%d_%H%M%S")
./test_pretrained_baseline.sh clipart

./test_pretrained_baseline.sh comic

./test_pretrained_baseline.sh watercolor

echo $now