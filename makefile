
UNIFY_VERSION ?= 5.10.25

build:
	docker build --build-arg UNIFY_VERSION=${UNIFY_VERSION} -t karnauskas/unifi-controller-docker:${UNIFY_VERSION} .
	docker tag karnauskas/unifi-controller-docker:${UNIFY_VERSION} karnauskas/unifi-controller-docker:latest

run:
	docker run --rm -p 8443:8443 karnauskas/unifi-controller-docker:${UNIFY_VERSION}

shell:
	docker run --rm -ti -p 8443:8443 -u 0 -v `pwd`:/app/:z karnauskas/unifi-controller-docker:karnauskas/unifi-controller-docker:${UNIFY_VERSION}  /bin/bash

push:
	docker push karnauskas/unifi-controller-docker:${UNIFY_VERSION}
	docker push karnauskas/unifi-controller-docker:latest

.PHONY: build run shell push
