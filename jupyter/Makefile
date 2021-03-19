#!/usr/bin/env make

build:
	docker build -t my/jupyter .

run:
	docker run -d \
	-p 8888:8888 \
	-v $(HOME)/code:/home/jovyan/work/code \
	-v $(HOME)/data:/data \
	--name jupyter \
	jupyter/minimal-notebook
