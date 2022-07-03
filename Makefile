PWD := ${CURDIR}

docker-run-dev:
	docker run --rm -v "${PWD}/":/srv/jekyll \
	-p 4000:4000 \
	-it jekyll/jekyll \
	jekyll serve --config _config.yml,_config_dev.yml --watch

docker-run-shell:
	docker run --rm -v "${PWD}/":/srv/jekyll \
	-p 4000:4000 \
	-it jekyll/jekyll \
	/bin/bash

echo-pwd:
	echo "${PWD}"