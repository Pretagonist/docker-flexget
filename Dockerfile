FROM python:2.7

RUN pip install -I flexget transmissionrpc

#set config directory
RUN mkdir -p /config \
    && touch /config/config.yml \
    cd /config/

VOLUME ["/config"]

#set external data directory for folder reading and such
VOLUME ["/data"]

CMD ["/usr/local/bin/flexget", "--loglevel", "info", "daemon", "start"]
