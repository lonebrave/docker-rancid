FROM alpine

LABEL maintainer Nick Hasser <nick.hasser@gmail.com>t

RUN apk update && \
    apk add git openssh-client man man-pages rancid rancid-doc&& \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

CMD /usr/bin/rancid-cvs && /usr/bin/rancid-run
