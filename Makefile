python_version=3.9
pgcli_version=3.2.0
image_name=flared/pgcli

.PHONY: help build push all

help:
	    @echo "Makefile arguments:"
	    @echo ""
	    @echo "python_version - Python Version"
	    @echo "pgcli_version - pgcli version"
	    @echo ""
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build --pull --build-arg PYTHON_VERSION=${python_version} --build-arg PGCLI_VERSION=${pgcli_version} -t ${image_name} .
		@docker tag ${image_name} ${image_name}:${pgcli_version}
push:
	    @docker push ${image_name}
		@docker push ${image_name}:${pgcli_version}

all: build push