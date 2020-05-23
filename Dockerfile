FROM debian:testing

RUN apt-get update && \
    apt-get install --no-install-recommends -y hydra wget ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /wordlists && \
    wget https://github.com/danielmiessler/SecLists/raw/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt -O /wordlists/10-million-password-list-top-1000000.txt

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
