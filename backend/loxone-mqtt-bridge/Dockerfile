FROM python:3.13-trixie

WORKDIR /usr/src/app

# set environment variables - has advantages for python in docker cointainer
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt update && apt install -y wget unzip tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/fkrenn12/loxone-mqtt-bridge/archive/master.zip \
    && unzip master.zip \
    && rm -rf master.zip \
    && cp -r ./loxone-mqtt-bridge-master/src/* . \
    && rm -rf ./loxone-mqtt-bridge-master \
    && rm -rf Dockerfile*

# install python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt

