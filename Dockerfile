FROM alpine:3.21.3

LABEL ort.opencontainers.image.authors="nick.hasser@gmail.com"
LABEL version="5.0.1"

RUN apk update && apk upgrade && apk add \ 
    git \
    subversion \
    openssh-client \
    #man \
    man-pages \
    rancid \
    rancid-doc \
    && rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

CMD /usr/bin/rancid-cvs && /usr/bin/rancid-run
