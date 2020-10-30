FROM ubuntu:20.04
ENV TZ=Europe/Copenhagen
ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update && apt-get install -y \
    openjdk-8-jre=8u265-b01-0ubuntu2~20.04 \
    graphviz=2.42.2-3build2 \
    python3-sphinx=1.8.5-7ubuntu3 \
    python3-pip=20.0.2-5ubuntu1\
    wget=1.20.3-1ubuntu1

ARG PLANTUML_BIN_FOLDER=/usr/bin/plantuml
COPY plantuml_setup.sh .
RUN /plantuml_setup.sh
COPY plantuml $PLANTUML_BIN_FOLDER

WORKDIR /workspaces
COPY requirements.txt .
RUN pip3 install -r requirements.txt