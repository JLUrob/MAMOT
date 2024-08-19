#!/usr/bin/env bash

DET_FILE=$1
DET_NAME=$2
PROCESS=$3
CONFIG=$4
# python ./data/script/first_frame.py $DET_FILE
# python ./data/script/reorder_detection.py $DET_FILE --detector-name $DET_NAME
python test.py --process $PROCESS --detection_path data/detector/val/val_$DET_NAME.json --detector_name $DET_NAME --config_path $CONFIG