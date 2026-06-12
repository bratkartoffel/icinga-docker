FROM docker.io/icinga/icinga2:latest@sha256:ced91a6d70eef10a2378e3f9b89175a3b41945f0c65f81dc85c2fecc29499ee2

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl bind9-dnsutils \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
