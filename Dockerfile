FROM docker.io/icinga/icinga2:latest@sha256:d7ecbb62dd70d76f999a34bf7371a9c22100b18f8d3a11442ca0caa918f27a39

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
