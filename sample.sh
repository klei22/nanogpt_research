#!/bin/bash

python sample.py \
  --out_dir=out-lyrics-pruned/ \
  --start="I don't know what, what I'm doing here
When you look at me, I try to dress up my fears
I should learn to carry the world
But I act like a girl, sit and cry on the sofa
I let the time fly so fast
I don't even know myself
So don't expect me to be like you
Please let me go on my way
I'll just take my time for a change
Do you still believe in me?
Everything will be ok
" \
  --temperature=0.1 \
  --num_samples=10 --max_new_tokens=100

