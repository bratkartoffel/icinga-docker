FROM docker.io/icinga/icinga2:latest@sha256:2c324263ab631e80ac9d601105898af36f02c031d367bc72c71691ce25c2ffcc

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
