FROM amazonlinux

WORKDIR ~/

RUN yum install python3 -y
RUN yum install zip -y