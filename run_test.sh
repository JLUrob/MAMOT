#!/usr/bin/env bash

DET_FILE=$1
DET_NAME=$2
PROCESS=$3

python ./data/script/first_frame.py $DET_FILE --dataset-version test
python ./data/script/reorder_detection.py $DET_FILE --detector-name $DET_NAME --dataset-version test
python test.py --process $PROCESS --detection_path data/detector/test/test_$DET_NAME.json --first_token_path data/utils/first_token_table/test/nusc_first_token.json --config_path config/MA3.yaml --detector_name $DET_NAME