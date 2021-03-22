#!/usr/bin/env make

build:
	docker build \
		--build-arg USERID=$$(id -u) \
		-t my/jupyter .

run-minimal:
	docker run -d \
	-p 8888:8888 \
	-e NB_UID=$$(id -u) \
	-v $(HOME)/code:/home/jovyan/work/code \
	-v $(HOME)/data:/data \
	--name jupyter \
	jupyter/minimal-notebook
