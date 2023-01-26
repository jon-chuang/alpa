python3 run_clm_flax.py \
    --output_dir="./output" \
    --config_name="./config_175b.json" \
    --tokenizer_name="facebook/opt-30b" \
    --alpa_init \
    --use_manual_layer \
    --use_dummy_value \
    --dataset_name="wikitext" \
    --dataset_config_name="wikitext-2-raw-v1" \
    --do_train \
    --block_size="1024" \
    --per_device_train_batch_size="8" \
    --per_device_eval_batch_size="64" \
    --num_micro_batches 8 \
    --operator_parallel 8 \
    --pipeline_parallel 8 \
    --dtype="float16" \
    --learning_rate="5e-4" --warmup_steps="2000" \
    --adam_beta1="0.9" --adam_beta2="0.98" --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="10" \
    --logging_steps="1" \
    --save_steps="888" \
    --eval_steps="888"
