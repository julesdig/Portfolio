# Variables
DOCKER = docker
DOCKER_COMPOSE = docker-compose
EXEC = $(DOCKER) exec -it english_project_php
PHP = $(EXEC) php
COMPOSER = $(EXEC) composer
NPM = $(EXEC) npm
SYMFONY_CONSOLE = $(PHP) bin/console
ENTER = $(DOCKER) exec  english_project_php -it
# Colors
GREEN = /bin/echo -e "\x1b[32m\#\# $1\x1b[0m"
RED = /bin/echo -e "\x1b[31m\#\# $1\x1b[0m"

## —— 🔥 App ——
init: ## Init the project
	$(MAKE) start
	$(MAKE) composer-install
	$(MAKE) npm-install
	@$(call GREEN,"The application is available at: https://www.english_project.localhost/.")

c-c: ## Clear cache
	$(SYMFONY_CONSOLE) cache:clear
	$(SYMFONY_CONSOLE) cache:clear --env=test
	$(SYMFONY_CONSOLE) cache:clear --env=prod

## —— ✅ Test ——
.PHONY: tests
tests: ## Run all tests
	$(MAKE) database-init-test
	$(PHP) bin/phpunit --testdox tests/Unit/
	$(PHP) bin/phpunit --testdox tests/Functional/
	$(PHP) bin/phpunit --testdox tests/E2E/

database-init-test: ## Init database for test
	$(SYMFONY_CONSOLE) d:d:d --force --if-exists --env=test
	$(SYMFONY_CONSOLE) d:d:c --env=test
	$(SYMFONY_CONSOLE) d:m:m --no-interaction --env=test
	$(SYMFONY_CONSOLE) d:f:l --no-interaction --env=test

unit-test: ## Run unit tests
	$(MAKE) database-init-test
	$(PHP) bin/phpunit --testdox tests/Unit/

functional-test: ## Run functional tests
	$(MAKE) database-init-test
	$(PHP) bin/phpunit --testdox tests/Functional/

# PANTHER_NO_HEADLESS=1 ./bin/phpunit --filter LikeTest --debug to debug with Chrome
e2e-test: ## Run E2E tests
	$(MAKE) database-init-test
	$(PHP) bin/phpunit --testdox tests/E2E/

## 💻 Coding standards
analyse: ## Run all analyse
	$(MAKE) phpstan
	$(MAKE) phpcbf
	$(MAKE) phpcs
	$(MAKE) phpmd

phpcs: ## Run PHP CS Sniffer
	$(ENTER) -c "project/vendor/bin/phpcs  project/src"
phpcbf: ## Run PHP CS Fixer
	$(ENTER) -c "project/vendor/bin/phpcbf  project/src"
phpstan: ## Run PHPStan
	$(ENTER) -c "project/vendor/bin/phpstan analyse project/src"
phpmd: ## Run PHP Mess Detector
	$(ENTER) -c  "project/vendor/bin/phpmd project/src text phpmd.xml"

## —— 🐳 Docker ——
start: ## Start app
	$(MAKE) docker-start
docker-start:
	$(DOCKER_COMPOSE) up -d

stop: ## Stop app
	$(MAKE) docker-stop
docker-stop:
	$(DOCKER_COMPOSE) stop
	@$(call RED,"The containers are now stopped.")

## —— 🎻 Composer ——
composer-install: ## Install dependencies
	$(COMPOSER) install

composer-update: ## Update dependencies
	$(COMPOSER) update

composer-require: ## Add a new dependency exemple package= suite du package
	$(COMPOSER) require $(package)

## —— 🐈 NPM —————————————————————————————————————————————————————————————————
npm-install: ## Install all npm dependencies
	$(NPM) install

npm-update: ## Update all npm dependencies
	$(NPM) update

npm-watch: ## Update all npm dependencies
	$(NPM) run watch

## —— 📊 Database ——
database-init: ## Init database
	$(MAKE) database-drop
	$(MAKE) database-create
	$(MAKE) database-migrate
	$(MAKE) fixtures

database-drop: ## Drop database
	$(SYMFONY_CONSOLE) d:d:d --force --if-exists

database-create: ## Create database
	$(SYMFONY_CONSOLE) d:d:c --if-not-exists

database-remove: ## Drop database
	$(SYMFONY_CONSOLE) d:d:d --force --if-exists

database-migration: ## Make migration
	$(SYMFONY_CONSOLE) make:migration

migration: ## Alias : database-migration
	$(MAKE) database-migration

database-migrate: ## Migrate migrations
	$(SYMFONY_CONSOLE) d:m:m --no-interaction

migrate: ## Alias : database-migrate
	$(MAKE) database-migrate

database-fixtures-load: ## Load fixtures
	$(SYMFONY_CONSOLE) d:f:l --no-interaction

fixtures: ## Alias : database-fixtures-load
	$(MAKE) database-fixtures-load

## —— 🛠️  Others ——
help: ## List of commands
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'



