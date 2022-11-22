pdm run python litfass/generate.py \
--checkpoint_path "models/fastdiff_nopretrain.ckpt" \
--dataset "../data/train-clean-b" \
--output_path "../generated/fastdiff_nopretrain" \
--hours .5 \
--batch_size 1 \
--use_voicefixer True \
--cache_path "../dataset_cache" \
--tts_device "cuda:0" \
--hifigan_device "cuda:1" \
--use_fastdiff True \
--min_samples_per_speaker 50