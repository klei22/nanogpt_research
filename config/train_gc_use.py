# train a miniature character-level shakespeare model
# good for debugging and playing on macbooks and such

out_dir = "out-gc/out-gc-4-8"
eval_interval = 10 # keep really frequent because small datasets
eval_iters = 8
# eval_iters = 200
log_interval = 1 # sh
# log_interval = 10 # don't print too too often

# we expect to overfit on this small dataset, so only save when val improves
always_save_checkpoint = True

wandb_log = False # override via command line if you like
wandb_project = 'shakespeare-char'
wandb_run_name = 'mini-gpt'

dataset = 'group_theory'
batch_size = 64
block_size = 64 # context of up to 256 previous characters
# should have a point where all of the examples are no longer in memeory

# baby GPT model :)
n_layer = 6
n_head = 6
n_embd = 384
dropout = 0.2

learning_rate = 1e-3 # with baby networks can afford to go a bit higher
# max_iters = 5000
# lr_decay_iters = 5000 # make equal to max_iters usually
max_iters = 2000
lr_decay_iters = 2000 # make equal to max_iters usually
min_lr = 1e-4 # learning_rate / 10 usually
beta2 = 0.99 # make a bit bigger because number of tokens per iter is small

warmup_iters = 20000 # not super necessary potentially
# make above not equal to decay iters, else div by zero
# warmup is before decay.
# decay then is the number of max iters

# on macbook also add
# device = 'cpu'  # run on cpu only
# compile = False # do not torch compile the model
