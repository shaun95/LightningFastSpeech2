CUDA_VISIBLE_DEVICES="0,1,2,3" pdm run python litfass/train.py \
--accelerator gpu \
--devices 4 \
--precision 16 \
--strategy ddp \
--batch_size 6 \
--val_check_interval 1.0 \
--accumulate_grad_batches 8 \
--layer_dropout 0.00 \
--duration_dropout 0.5 \
--variance_dropout 0.5 0.5 0.5 \
--max_epochs 50 \
--gradient_clip_val 1.0 \
--encoder_hidden 256 \
--encoder_conv_filter_size 1024 \
--variance_filter_size 256 \
--duration_filter_size 256 \
--decoder_hidden 256 \
--decoder_conv_filter_size 1024 \
--encoder_head 2 \
--decoder_head 2 \
--variance_loss_weights 0.01 0.01 0.01 \
--duration_loss_weight 0.01 \
--variance_levels phone phone phone \
--variance_transforms none none none \
--variance_early_stopping mae \
--early_stopping_patience 5 \
--decoder_layers 6 \
--decoder_kernel_sizes 9 9 9 9 9 9 \
--priors energy duration snr pitch \
--speaker_embedding_every_layer False \
--prior_embedding_every_layer False \
--wandb_name "litfass_a" \
--wandb_mode "online" \
--train_target_path "../data/train-clean-a" \
--from_checkpoint "models/split_a_mae.ckpt" \
--train_min_samples_per_speaker 10 \
--priors_gmm True \
--priors_gmm_max_components 5