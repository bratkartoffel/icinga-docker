FROM docker.io/icinga/icinga2:latest@sha256:e226b1290c8ac93285e465f32ef17d47aeed9687f5dba1fb677088e872b61c82

USER root

RUN apt update \
	&& apt install -y nagios-nrpe-plugin libnet-dns-perl \
	&& rm -rf /var/lib/apt/lists/*

USER icinga
