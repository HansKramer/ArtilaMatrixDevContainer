FROM ubuntu-upstart:14.04
MAINTAINER Hans Kramer
CMD ["/sbin/init"]
COPY matrix-toolchain-1.0.deb /
COPY ipkg-1.7-0.1.deb /
RUN dpkg --add-architecture i386
RUN apt-get update 
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386 build-essential
RUN dpkg -i /matrix-toolchain-1.0.deb /ipkg-1.7-0.1.deb
RUN rm /matrix-toolchain-1.0.deb /ipkg-1.7-0.1.deb
