CUDA_VISIBLE_DEVICES="0,1,2,3,4,5"
path_to_save_submitit_logs="logs/submitit_logs"
slurm_partition="dev"

python main_distributed.py \
  --fname configs/in1k_vith14_ep300.yaml \
  --folder $path_to_save_submitit_logs \
  --partition $slurm_partition \
  --nodes 2 --tasks-per-node 8 \
  --time 1000