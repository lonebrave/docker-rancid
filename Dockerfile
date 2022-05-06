FROM alpine

LABEL maintainer Nick Hasser <nick.hasser@gmail.com>

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
