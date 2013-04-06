HERE = $(shell pwd)
BIN = $(HERE)/pythonVE/bin
PIP = $(BIN)/pip

.PHONY: all build

all: build

$(HERE)/virtualenv:
	curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.9.1.tar.gz
	tar xzvf virtualenv-1.9.1.tar.gz
	mv virtualenv-1.9.1 virtualenv

$(HERE)/pythonVE: $(HERE)/virtualenv
	cd virtualenv && \
	python virtualenv.py ../pythonVE

build: $(HERE)/pythonVE
	$(PIP) install ansible
