docker stop pvo_cont_0
docker rm -v pvo_cont_0
# docker run --gpus all -it --name pvo -v /home:/home --ipc=host pvo_running:latest bash
docker run -it -Pd --gpus='"device=0,1"' --ipc=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /path/to/pvo/on/local/machine:/pvo -v /:/root --name pvo_cont_0 pvo:v0
