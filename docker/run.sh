name=ijepa_$1
docker run \
  --shm-size=2gb \
  --name=$name \
  --gpus all \
  --rm \
  -it \
  -e HOME \
  --user $UID \
  -v $HOME:$HOME \
  --ipc=host \
  -w $PWD \
  ijepa:torch2.0.1
  #/bin/bash
#  --expose 6006 \
# --runtime=nvidia \