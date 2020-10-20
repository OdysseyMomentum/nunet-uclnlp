FROM ubuntu:18.04

RUN apt update

RUN apt upgrade -y

RUN apt install -y git wget python-pip locales locales-all

RUN locale-gen

RUN sed -i '/^#.* en_US.UTF-8 /s/^#//' /etc/locale.gen

RUN locale-gen

RUN echo "export LC_ALL=en_US.UTF-8" >> /root/.bashrc

RUN pip install -U pip

RUN pip install --use-feature=2020-resolver \
            smart-open==1.10.1 \
            scikit-learn==0.19.2 \
            xgboost==0.71 \
            gensim==3.4.0 \
            nltk==3.3 \
            theano==1.0.2

RUN python -c "import nltk; nltk.download('all')"

RUN git clone https://github.com/dagims/fnc-1.git /root/fnc-1

ADD GoogleNews-vectors-negative300.bin /root/fnc-1/deep_learning_model

ADD GoogleNews-vectors-negative300.bin /root/fnc-1/tree_model

WORKDIR /root
