build:
	docker build -t karnauskas/unifi-controller-docker .

run:
	docker run --rm -p 8443:8443 karnauskas/unifi-controller-docker

shell:
	docker run --rm -ti -p 8443:8443 -u 0 -v `pwd`:/app/:z karnauskas/unifi-controller-docker /bin/bash

push:
	docker push karnauskas/unifi-controller-docker:latest

.PHONY: build run shell push
