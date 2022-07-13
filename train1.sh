CUDA_VISIBLE_DEVICES="3" pdm run python src/train.py \
--accelerator gpu \
--batch_size 8 \
--accumulate_grad_batches 6 \
--precision 16 \
--max_epochs 30 \
--gradient_clip_val 1.0 \
--variance_levels phone phone phone \
--variance_transforms none none none \
--variance_early_stopping js \
--decoder_layers 6 \
--decoder_kernel_sizes 9 9 9 9 9 9 \
--wandb_name "early_stop_js_phone_full" \
--train_target_path "../data/train-clean-360-aligned"