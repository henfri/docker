# knxd
# 
#
FROM debian:jessie
MAINTAINER Hendrik Friedel hendrik@friedels.name
RUN apt-get -y update
RUN apt-get -y install git-core build-essential debhelper autotools-dev autoconf automake libtool \
                       libusb-1.0-0-dev  pkg-config base-files  base-files libev-dev  \
                       init-system-helpers dh-systemd libsystemd-dev  libsystemd-daemon-dev

# now build+install knxd

RUN git clone https://github.com/knxd/knxd.git && cd knxd && git checkout tags/v0.12.6 && \
    dpkg-buildpackage -b -uc && cd .. && dpkg -i knxd_*.deb knxd-tools_*.deb


#EXPOSE  4720 6720 3671/udp
##### NOTE AND README ######
#start this container with --net=host instead of binding ports

CMD ["knxd", "-e 0.0.1", "-E 0.0.2:8", "-DTRS", "-c", "-i", "--send-delay=70", "-B single", "-b ipt:192.168.177.24"]
