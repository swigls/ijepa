CUDA_VISIBLE_DEVICES="0,1,2,3,4,5"

python main.py \
  --fname configs/in1k_vith14_ep300.yaml \
  --devices cuda:0 cuda:1 cuda:2 cuda:3 cuda:4 cuda:5