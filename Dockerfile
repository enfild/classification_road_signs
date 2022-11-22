FROM ubuntu:22.04

ENV TZ=America/New_York \
    DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
    sudo git zip curl wget \
    libopencv-dev libffi-dev libsqlite3-dev python3 python3-dev python3-pip \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN pip install --upgrade pip
RUN pip install -U pip setuptools
RUN pip install ipython matplotlib numpy torch torchmetrics torchvision pytorch-lightning tqdm
RUN pip install jupyter notebook

ADD proj /proj

