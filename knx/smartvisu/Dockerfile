# smartvisu
# 
#
FROM ubuntu:14.04
MAINTAINER Hendrik Friedel hendrik@friedels.name
RUN apt-get -y install git


RUN cd /tmp  &&  git clone https://github.com/Martin-Gleiss/smartvisu && mkdir -p /usr/share/nginx/ && mv /tmp/smartvisu /tmp/html && mv /tmp/html /usr/share/nginx/
ADD ./files/lib/ /usr/share/nginx/html/lib/
ADD ./files/pages/ /usr/share/nginx/html/pages/
ADD ./files/icons/ /usr/share/nginx/html/icons/

VOLUME /usr/share/nginx/html
ENTRYPOINT /usr/bin/tail -f /dev/null


