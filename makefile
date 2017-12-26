build:
	docker build -t unific .

run:
	docker run --rm -p 8443:8443 unific:latest

shell:
	docker run --rm -ti -p 8443:8443 -u 0 -v `pwd`:/app/:z unific:latest /bin/bash

.PHONY: build run shell
