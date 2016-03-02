# smarthome.py
# 
#
FROM ubuntu:14.04
MAINTAINER Hendrik Friedel hendrik@friedels.name

ADD ./files/run.sh /usr/local/bin/run.sh
RUN apt-get update && apt-get -y install git-core wget python3 python3-dev python3-setuptools && sudo easy_install3 pip && sudo pip3 install ephem 
RUN sudo sudo adduser smarthome --disabled-password --gecos ""  && sudo mkdir -p /usr/local/smarthome/ && sudo chown -R smarthome /usr/local/smarthome/ &&  cd /usr/local && git clone git://github.com/mknx/smarthome.git && pip install colorama pyserial

RUN locale-gen "de_DE.UTF-8" && dpkg-reconfigure locales 
RUN chmod 0755 /usr/local/bin/run.sh

CMD ["/usr/local/bin/run.sh"]

# CLI, Network, Speechparser
EXPOSE 2323 2424 2788



# Start with docker -d -p 2424:2424 -p 2323:2323 -p 2788:2788 -v /path/to/your/smarthome.py_folder:/usr/local/smarthome.py henfri/smarthome.py

#docker -d -p 2424:2424 -p 2323:2323 -p 2788:2788 -v /mnt2/RockOn/config/smarthome:/usr/local/smarthome.py henfri/smarthome.py