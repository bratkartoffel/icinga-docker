FROM docker.io/icinga/icinga2:latest@sha256:8421519c8da7cec70b442c238d8e237d0fc0978c9d2f67f88ab8a6fb35068f0e

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
