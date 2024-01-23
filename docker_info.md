Building:

    docker build --tag 'clip_dockerized' .

Running:

    docker run --name running_clip_dockerized --mount type=bind,source=D:\segmentation_img_data,target=/home/data --gpus all -it 'clip_dockerized' 

Or using volumes (run on ):

    docker run --name running_clip_dockerized -v D:\data:/workspace/data --gpus all -it 'clip_dockerized' 

