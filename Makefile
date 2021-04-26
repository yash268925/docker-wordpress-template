CYAN  := \033[36m
RESET := \033[0m

.DEFAULT_GOAL := help

include .env

help: FORCE ## Show this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "$(CYAN)%-30s$(RESET) %s\n", $$1, $$2}'

up: FORCE ## Up compose environment
	@docker-compose up -d

down: FORCE ## Down compose environment
	@docker-compose down --volume

editor: FORCE ## Run editor
	@docker run -it --rm -v $(realpath ./wp-data):/work -w /work yash268925/neovim-php

cli-env: FORCE ## Open cli bash (able to use `wp` command)
	@docker-compose run --rm cli bash

install: FORCE ## Run install script (edit .env file before use)
	@docker-compose run --rm cli bash /cli-scripts/install.sh

FORCE:
.PHONY: FORCE
