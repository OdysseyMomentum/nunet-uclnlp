FROM snet_publish_service

RUN apt-get update && \
        apt-get install -y \
        curl \
        vim \
        nano \
        git \
        wget

RUN apt-get install -y python3 python3-pip

ENV SINGNET_REPOS=/opt/singnet
ENV ORGANIZATION_ID="odyssey-org"
ENV ORGANIZATION_NAME="odyssey"
ENV SERVICE_ID="uclnlp-service"
ENV SERVICE_NAME="UCLNLP Service"
ENV SERVICE_IP="195.201.197.25"
ENV SERVICE_PORT="7007"
ENV DAEMON_PORT="7000"
ENV DAEMON_HOST="0.0.0.0"
ENV USER_ID="Amante"

EXPOSE 7000:7000
EXPOSE 7007:7007

COPY . /${SINGNET_REPOS}/uclnlp
WORKDIR /${SINGNET_REPOS}/uclnlp

RUN pip3 install -r requirements.txt

RUN sh buildproto.sh

