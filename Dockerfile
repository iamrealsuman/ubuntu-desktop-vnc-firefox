FROM ubuntu:18.04

# author
MAINTAINER Suman Mishra Prabhat 

# extra metadata
LABEL version="1.0"
LABEL description="Ubuntu desktop image with all basics"



ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update && \
apt-get install -y tightvncserver && \
apt-get install -y vim && \
apt-get install -y xfce4 && \
apt-get install -y xfce4-goodies && \
apt-get install -y firefox && \
apt-get install -y firefox-locale-en && \
apt install -y iproute2 && \
apt install -y iputils-ping && \
apt install -y openssh-server

RUN mkdir /root/.vnc

RUN apt-get install -y python3
RUN apt-get install -y python3-yaml
RUN apt-get -y autoremove


ADD xstartup /root/.vnc/xstartup
ADD passwd /root/.vnc/passwd

RUN chmod 700 /root/.vnc/xstartup
RUN chmod 700 /root/.vnc/passwd

RUN update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/xfce4-terminal 50
CMD /usr/bin/vncserver :1 -geometry 1280x800 -depth 24 && /bin/bash
