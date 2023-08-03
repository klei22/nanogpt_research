#!/bin/bash
# source this file
#
# Paramterize the "2"
#
#
conda activate python38
# for MODULO in {2..80}; do
for MODULO in {11..16}; do
  echo "$MODULO"
  OUTPUT_DIRECTORY="out-gc/out-gc-$MODULO"

  if [ ! -d "$OUTPUT_DIRECTORY" ]; then
    mkdir -p "$OUTPUT_DIRECTORY"
  fi

  python3 data/group_theory/prepare.py -i cyclic_for_primes_and_char/variations/"$MODULO"_100000.txt
  sed "s/OUTPUT_DIRECTORY/\"out-gc\/out-gc-${MODULO}\"/" config/train_gc.py > config/train_gc_use.py
  python3 train.py config/train_gc_use.py |& tee "out-gc/${MODULO}.txt"
done

