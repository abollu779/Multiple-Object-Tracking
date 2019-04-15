CUDA_VISIBLE_DEVICES=$2 python src/pretrained_scene_seg.py \
    --train_data_path=/n/scanner/ravi/many_cam/jackson_hole/ \
    --train_segments=jackson_hole_6-7.mp4,jackson_hole_6-8.mp4,jackson_hole_6-9.mp4,jackson_hole_6-10.mp4,jackson_hole_6-11.mp4 \
    --train_dir=/tmp/test \
    --detections_prefix=mask_rcnn_1 \
    --batch_size=1 \
    --fine_classes=1 \
    --filter_depth_multiplier=1.0 \
    --num_units=2 \
    --inference_stride=1 \
    --background_weight=1 \
    --max_frames=$1 \
    --stats_path=/n/pana/scratch/ravi/JITNet/results/test_pretrained_$1.npy \
    --checkpoint_path=/n/pana/scratch/ravi/train/jitnet_v2_2x_coco_pretrained/ \
    --num_pretrained_classes=81 \
    --video_out_path=test_coco.avi
