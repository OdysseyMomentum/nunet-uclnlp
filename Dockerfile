FROM ubuntu:18.04

RUN apt update; apt upgrade -y

RUN apt install -y vim \
                   git \
                   curl \
                   cmake \
                   libtool \
                   autoconf \
                   python3-dev \
                   python3-pip \
		    libudev-dev \
		    build-essential \
		    libusb-1.0.0-dev \
		    software-properties-common

RUN python3 -m pip install -U pip
RUN python3 -m pip install numpy==1.11.3 \
			   scikit-learn==0.18.1 \
			   scipy==0.18.1 \
			   tensorflow==0.12.1 \
			   protobuf \
			   grpcio \
			   grpcio-tools \
			   snet-cli

#RUN git clone https://github.com/uclnlp/fakenewschallenge /root/uclnlp

COPY . uclnlp/
WORKDIR uclnlp/fakenewschallenge

#RUN git clone -b snet-service https://github.com/dagims/fakenewschallenge /root/uclnlp

#WORKDIR /root/uclnlp

RUN python3 -m grpc_tools.protoc \
              -I. \
              --python_out=. \
              --grpc_python_out=. \
              ./service_spec/uclnlpfnc.proto
