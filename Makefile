TAG := $(shell git rev-parse --abbrev-ref HEAD | tr "/" "-" | sed -e "s/^master/latest/")
BASENAME := $(shell basename "$$PWD")

build:
	docker build --tag $(BASENAME):$(TAG) .

run:
	docker run --name="$(BASENAME)-$(TAG)-run" --rm -it --net=host -v $$PWD/sample:/opt:ro $(BASENAME):$(TAG)
