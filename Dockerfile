############################################################
# Dockerfile to run MultiChain Containers
# Based on Ubuntu Image
############################################################

FROM ubuntu

RUN apt-get update && \
	apt-get install -y wget nano

RUN \
	cd / && \
	wget http://www.multichain.com/download/multichain-1.0-alpha-9.tar.gz && \
	tar -xvzf multichain-1.0-alpha-9.tar.gz && \
	cd multichain-1.0-alpha-9 && \
	mv multichaind multichain-cli multichain-util /usr/local/bin

COPY makeChain.sh /

EXPOSE 3000
