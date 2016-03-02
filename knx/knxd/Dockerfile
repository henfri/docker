# knxd
# 
#
FROM ubuntu:14.04
MAINTAINER Hendrik Friedel hendrik@friedels.name
RUN apt-get -y update && apt-get -y install git-core wget build-essential debhelper autotools-dev autoconf automake libtool pkg-config libusb-1.0-0-dev base-files debianutils cdbs && git clone https://github.com/knxd/knxd.git

# Install pthsem
#############################
RUN apt-get -y install libusb-1.0-0 libusb-1.0-0-dev &&  wget https://www.auto.tuwien.ac.at/~mkoegler/pth/pthsem_2.0.8.tar.gz && tar xzf pthsem_2.0.8.tar.gz && cd pthsem-2.0.8 && dpkg-buildpackage -b -uc && cd .. &&  sudo dpkg -i libpthsem*.deb



# now build+install knxd itself
#############################
RUN cd knxd && sed  -i "s/libsystemd-daemon-dev (>= 200) | base-files (<< 8),/base-files (<< 8),/" ./debian/control &&  dpkg-buildpackage -b -uc && cd .. && sudo dpkg -i knxd_*.deb knxd-tools_*.deb


# alternative via ppa RUN  sudo apt-get install -y software-properties-common libusb-1.0-0  && sudo add-apt-repository -y ppa:timo-wingender/knxd-daily && sudo apt-get update && apt-get install knxd

#EXPOSE  4720 6720 3671/udp
##### NOTE AND README ######
#start this container with --net=host instead of binding ports

CMD ["knxd", "-t 65535", "-e=0.0.2", "-D", "-T", "-R", "-S", "-i", "--GroupCache", "-b ipt:192.168.177.24"]
