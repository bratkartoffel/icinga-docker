FROM docker.io/icinga/icinga2:latest

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
