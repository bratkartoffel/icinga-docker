FROM docker.io/icinga/icinga2:latest@sha256:2748b8d8166435f3419de68b704d5eac7671e74d97f7dea6ffa1f04738c74902

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils fping \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
