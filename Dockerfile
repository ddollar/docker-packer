FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl unzip

RUN curl -L https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip -o /tmp/packer.zip
RUN unzip /tmp/packer.zip -d /usr/local/bin
RUN rm -f /tmp/packer.zip

WORKDIR /packer

ENTRYPOINT ["/usr/local/bin/packer"]
