FROM ubuntu:16.04
MAINTAINER sukjun.sagong@ahnlab.com
RUN apt-get update
RUN apt-get install -y wget vim net-tools iproute2
RUN apt-get install -y locales dh-python distro-info-data libpython3-stdlib python3 python3-minimal python3.5 python3.5-minimal
RUN apt-get install -y php-mysqlnd
RUN apt-get install -y apache2 bc build-essential cpp curl g++ gawk gcc genisoimage gzip htmldoc isolinux lftp libapache2-mod-php libc6 libcurl3 liblzma-dev m4 mysql-client nfs-kernel-server openssh-server tar tftp-hpa tftpd-hpa unzip vsftpd wget xinetd zlib1g
#RUN php php-bcmath php-cli php-curl php-fpm php-gd php-gettext php-json php-mbstring php-mysql php-mysqlnd
#RUN wget -O /opt/fog.1.5.5.tar.gz https://github.com/FOGProject/fogproject/archive/1.5.5.tar.gz
ADD fogproject-1.5.5.tar.gz /opt
WORKDIR /opt
RUN cd /opt
COPY docker-entrypoint.sh /opt

