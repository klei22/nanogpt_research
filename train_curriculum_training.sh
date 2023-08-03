
#!/bin/bash
# source this file
#
# Paramterize the "2"
#
#
# conda activate python38
# for MODULO in {2..80}; do
# for MODULO in {11..16}; do
INITIAL="4"
MODULO="8"
echo "$MODULO"
OUTPUT_DIRECTORY="out-gc/out-gc-${INITIAL}-${MODULO}"

if [ ! -d "$OUTPUT_DIRECTORY" ]; then
mkdir -p "$OUTPUT_DIRECTORY"
cp "out-gc/out-gc-m${INITIAL}_b${INITIAL}_z1_100000.txt/ckpt.pt" "${OUTPUT_DIRECTORY}"
fi

python3 data/group_theory/prepare.py -i cyclic_for_primes_and_char/variations_single_digit_no_separator/"${MODULO}"_100000.txt
sed "s/OUTPUT_DIRECTORY/\"out-gc\/out-gc-${INITIAL}-${MODULO}\"/" config/train_gc_checkpoint.py > config/train_gc_use.py
python3 train.py config/train_gc_use.py |& tee "out-gc/${INITIAL}_${MODULO}.txt"
# done

