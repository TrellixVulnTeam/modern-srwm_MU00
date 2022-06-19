#!/bin/bash

SEED=1

export TORCH_EXTENSIONS_DIR=

CODE=
DATA=

python3 ${CODE}/main_few_shot_sync.py \
  --data_dir ${DATA} \
  --name_dataset miniimagenet \
  --seed ${SEED} \
  --num_worker 12 \
  --model_type 'srwm' \
  --work_dir save_models \
  --total_epoch 2 \
  --total_train_steps 600_000 \
  --validate_every 1_000 \
  --batch_size 16 \
  --num_layer 3 \
  --n_head 16 \
  --hidden_size 256 \
  --ff_factor 8 \
  --dropout 0.1 \
  --vision_dropout 0.1 \
  --k_shot 5 \
  --test_per_class 1 \
  --use_warmup \
  --project_name 'miniimagenet_5shot' \
  --use_wandb
