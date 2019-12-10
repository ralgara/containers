#!/usr/bin/env make

build:
	docker build -t my/jupyter .

run:
	docker run -d \
	-p 8888:8888 \
	-v $(HOME)/git:/home/jovyan/work/git \
	-v /data:/data \
	--name my/jupyter \
	my/jupyter
