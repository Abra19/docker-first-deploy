compose-setup: compose-build compose-install

compose-build:
	docker-compose build

compose-install:
	docker-compose run app make install

compose-bash:
	docker compose run app bash

compose-lint:
	docker-compose run app make lint

compose-lint-ci:
	docker-compose -f docker-compose.yml run app make lint

compose-test:
	docker-compose run app make test

compose-test-ci:
	pwd && docker-compose -f docker-compose.yml run app make test

compose-console:
	docker-compose run --rm app bash

compose:
	docker-compose up --abort-on-container-exit

compose-down:
	docker-compose down -v --remove-orphans

docker-push:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml push app

install:
	npm ci

start:
	npm start

lint:
	npx eslint .

lint-fix:
	npx eslint . --fix

test:
	npm test

setup_server:
	ansible-playbook ansible/setup.yml -i ansible/inventory.yml -u root

deploy:
	ansible-playbook ansible/release.yml -i ansible/inventory.yml -u root
