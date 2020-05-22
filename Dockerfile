FROM debian:testing

RUN apt-get update && \
    apt-get install --no-install-recommends -y hydra && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["hydra"]