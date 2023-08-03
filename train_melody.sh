#!/bin/bash

OUT_DIR = 'out-melody/out-midi-melody'

p data/music_tokens/prepare.py
p train.py config/train_melody.py |& tee "out-melody/melody.txt"
