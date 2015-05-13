FROM duffqiu/dev-tools:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y install epel-release
RUN yum -y  update
RUN yum install -y wget golang hg git
RUN yum install -y tar nodejs npm 
RUN npm install -g bower
RUN npm install -g grunt 

ENV GOPATH=/root/
ENV PATH=$PATH:$GOPATH/bin

WORKDIR /root

ENTRYPOINT ["/usr/bin/go"]

