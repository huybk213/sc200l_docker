FROM ubuntu:16.04
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
#RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt update
RUN apt-get install -y bc git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev libssl-dev python2.7 
RUN apt-get install -y python3 apt-utils libncurses-dev x11proto-core-dev libx11-dev libgl1-mesa-dev g++-multilib lib32z1-dev mingw-w64 tofrodos python-markdown libxml2-utils xsltproc libssl-dev
RUN alias python=python2.7
RUN apt-get install -y python-pip
RUN pip install pycryptodome
RUN apt-get install -y openjdk-8-jdk
#RUN update-alternatives --config java
RUN export LC_ALL=C
RUN mkdir /sc200l
ENTRYPOINT [ "bash"]
