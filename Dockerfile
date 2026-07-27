FROM docker.io/icinga/icinga2:latest@sha256:51e8699e2d0de5a9eaee2b70b3abd84453f2810f30743dfa82e953d8453bf52b

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
