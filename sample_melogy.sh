#!/bin/bash

p sample.py \
  --out_dir=out-melody/out-midi-melody/
  --start="60
80
" \
  --temperature=0.5 \
  --num_samples=10 --max_new_tokens=100

