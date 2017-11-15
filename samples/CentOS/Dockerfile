FROM centos:7

#COMMAND TO BUILD THE IMAGE ==> docker build --build-arg ARIA_VER=0.1.1 --build-arg GTAG_VER=0.1.1 -t aria_011:7 .
ARG ARIA_VER=0.1.1
ARG GTAG_VER=0.1.1

RUN yum -y update; yum clean all

RUN yum install -y yum-plugin-ovl
RUN yum install -y python-devel gcc libffi-devel openssl-devel epel-release curl git
RUN yum install wget -y
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py

RUN pip install --upgrade pip setuptools

RUN pip install apache-ariatosca[ssh]==$ARIA_VER --no-binary apache-ariatosca

WORKDIR /tmp

RUN git clone https://github.com/apache/incubator-ariatosca.git /tmp/incubator-ariatosca

WORKDIR /tmp/incubator-ariatosca

RUN git checkout tags/$GTAG_VER