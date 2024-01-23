FROM pytorch/pytorch:latest

# stating that is a non-interactive environment:
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install git -y

RUN pip install ftfy regex tqdm
RUN pip install git+https://github.com/kauevestena/CLIP.git

# clone the repo:
WORKDIR /workspace

RUN git clone https://github.com/kauevestena/CLIP.git

WORKDIR /workspace/CLIP

RUN python CLIP/simple_test.py
