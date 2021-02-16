FROM nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04
#FROM nvidia/cuda:10.2-cudnn8-runtime-ubuntu18.04

MAINTAINER Aaron Cody <aaron@aaroncody.com>

# Install pip3
RUN apt update
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip

# Install Tensorflow
RUN pip3 install tensorflow==2.4.1
ADD tf-test.py /tf-test.py

# Install PyTorch
RUN pip3 install torch torchvision
ADD torch-test.py /torch-test.py

ADD test.sh /test.sh