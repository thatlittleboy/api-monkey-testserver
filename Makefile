.PHONY: all run clean


#################### Globals ####################
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))


################### Commands ####################
all: run-app


run-app:
	./venv/bin/python3 -m flask run --port 5010


clean:
	find . -type f -name '*.py[co]' -delete
	find . -type d -name '__pycache__' -delete
	@echo "Finished cleaning files."
