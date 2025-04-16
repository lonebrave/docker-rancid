NAME = nickhasser/rancid
VERSION = $(shell date -I)
LOCALDIR = `pwd`

default: build-latest

clean:
	docker image rm $(NAME)

build:
	docker build -t $(NAME):$(VERSION) .

build-latest:
	docker build -t $(NAME) .

push:
	docker push $(NAME):$(VERSION)

push-latest:
	docker push $(NAME)

debug:
	docker run --rm -it -v $(LOCALDIR):/tmp/hostdir $(NAME) /bin/sh

run:
	docker run --rm $(NAME)

release: build push

release-latest: build-latest push-latest
