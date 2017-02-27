FROM python:2.7

RUN pip install -I flexget

#set config directory
RUN mkdir -p /config \
    && touch /config/config.yml 

VOLUME ["/config"]

#set external data directory for folder reading and such
VOLUME ["/data"]

CMD ["/usr/local/bin/flexget","-c","/config","--loglevel", "info", "daemon", "start"]
