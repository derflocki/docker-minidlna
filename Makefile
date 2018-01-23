TAG := $(shell git rev-parse --abbrev-ref HEAD | tr "/" "-")

build:
	echo $(TAG)
	docker build --tag docker-minidlna:$(TAG) .

run:
	docker run --rm -it --net=host -v ~/Downloads:/opt:ro docker-minidlna:$(TAG)
