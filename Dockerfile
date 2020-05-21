FROM debian:testing

ARG HYDRA_VERSION=v9.0

RUN apt-get update && \
    apt-get install -y hydra

ENTRYPOINT ["hydra"]