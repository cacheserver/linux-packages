FROM ubuntu:latest

RUN sed -i 's#archive.ubuntu.com#archive.ubuntu.local#g' /etc/apt/sources.list.d/ubuntu.sources
RUN sed -i 's#ports.ubuntu.com#ports.ubuntu.local#g' /etc/apt/sources.list.d/ubuntu.sources
RUN sed -i 's#security.ubuntu.com#security.ubuntu.local#g' /etc/apt/sources.list.d/ubuntu.sources

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl
