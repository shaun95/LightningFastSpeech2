CUDA_VISIBLE_DEVICES="0" pdm run python src/train.py \
--accelerator gpu \
--batch_size 12 \
--accumulate_grad_batches 4 \
--precision 16 \
--max_epochs 30 \
--gradient_clip_val 1.0 \
--variance_levels phone phone phone \
--variance_transforms none none none \
--variance_early_stopping mae \
--decoder_layers 6 \
--wandb_name "early_stop_mae_phone" \
--train_target_path "../data/train-clean-aligned"