FROM centos:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update
RUN yum install -y wget golang hg git

ENV GOPATH=/root/go
ENV PATH=$PATH:$GOPATH/bin

WORKDIR /root

ENTRYPOINT ["/usr/bin/go"]

