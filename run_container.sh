docker stop dar_pvo_cont_1
docker rm -v dar_pvo_cont_1
# docker run --gpus all -it --name pvo -v /home:/home --ipc=host pvo_running:latest bash
docker run -it -Pd --gpus='"device=0,1"' --ipc=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /storage/3030/AkhmetzyanovD/projects/pvo:/pvo -v /:/root --name dar_pvo_cont_1 dar_pvo:v1 bash
