REPOSITORY := ai-rag
SHELL := /bin/bash

build:
	docker build --network=host \
	-f ./Dockerfile \
	-t ghcr.io/thewatergategroups/$(REPOSITORY):latest \
	. 

up: 
	docker compose up -d --remove-orphans
	docker compose logs -f 

test:
	python -m pytest -v tests

snapshot:
	python -m pytest -v --snapshot-update

debug:
	docker compose run -it $(REPOSITORY) bash

down: 
	docker compose --profile "*" down


push: build
	docker push ghcr.io/thewatergategroups/$(REPOSITORY):latest