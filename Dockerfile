FROM docker.io/icinga/icinga2:latest

RUN apt update \
	&& apt install nagios-nrpe-plugin libnet-dns-perl \
	&& rm -rf /var/lib/apt/lists/*

