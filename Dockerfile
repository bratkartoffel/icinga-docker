FROM docker.io/icinga/icinga2:latest@sha256:c7ebfbfe35637cee11ba8f7d666e42179158db9a28050aa9b91e85c49948743e

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
