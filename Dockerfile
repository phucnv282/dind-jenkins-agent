FROM jenkins/inbound-agent

USER root

RUN apt update && \
    apt install curl && \
	apt clean -y && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://get.docker.com/ | sh
