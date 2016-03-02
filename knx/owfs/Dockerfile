# owfs
# 
#
FROM ubuntu:14.04
MAINTAINER Hendrik Friedel hendrik@friedels.name

RUN apt-get update &&  apt-get install -y supervisor python-software-properties && apt-get install -y software-properties-common && sudo add-apt-repository -y ppa:henfri/knx  &&  apt-get -y update && apt-get -y upgrade && apt-get -y install owfs-server
RUN mkdir -p /var/run/owfs /var/log/supervisor

#COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 4304
