
FROM python:3.12-slim-bookworm

ENV PYTHONUNBUFFERED True
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN usermod -s /bin/bash root

RUN apt-get update
RUN apt-get install curl nano python3 python3-dev python-is-python3 build-essential cargo libstd-rust-dev -y
RUN python -m pip install --upgrade pip
RUN pip install setuptools wheel 

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN apt-get install -y nodejs npm
RUN npm install -g pm2
COPY . /app
RUN pip install -e ./
ENV PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
ENTRYPOINT [ "tail", "-f", "/dev/null"]