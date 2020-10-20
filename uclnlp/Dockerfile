FROM ubuntu:18.04

RUN apt update; apt upgrade -y

RUN apt install -y vim \
                   git \
                   python3-pip \
                   software-properties-common

RUN add-apt-repository -y ppa:deadsnakes/ppa

RUN apt update

RUN apt install -y python3.5

RUN python3.5 -m pip install -U pip

RUN python3.5 -m pip install numpy==1.11.3 \
                            scikit-learn==0.18.1 \
                            scipy==0.18.1 \
                            tensorflow==0.12.1

#RUN git clone https://github.com/uclnlp/fakenewschallenge /root/uclnlp
RUN git clone https://github.com/uclnlp/fakenewschallenge /root/uclnlp
