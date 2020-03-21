run:
	@docker run --runtime=nvidia --init --rm danieljh/covid19-at-home

install:
	@docker build -t danieljh/covid19-at-home -f Dockerfile .

update:
	@docker build -t danieljh/covid19-at-home -f Dockerfile . --pull --no-cache

publish:
	@docker push danieljh/covid19-at-home


.PHONY: run install update publish
