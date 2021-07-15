#!bin/bash

python3 train.py -p config/$1/preprocess.yaml -m config/$1/model.yaml -t config/$1/train.yaml
