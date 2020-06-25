SHELL=/bin/bash -euo pipefail

install:
	 npm install

# lint:
# 	npm run lint

build:
	docker build -t unattended-access-poc .

run:
	docker run -p 9000:9000 unattended-access-poc:latest