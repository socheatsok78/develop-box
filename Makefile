.PHONY: install

install:
	@echo "Pulling images..."
	@./bin/service-pull mysql
	@./bin/service-pull redis
	@./bin/service-pull watchtower

services: mysql-up redis-up watchtower-up

mysql-up:
	@echo "Starting mysql..."
	@./bin/service-up mysql

redis-up:
	@echo "Starting redis..."
	@./bin/service-up redis

watchtower-up:
	@echo "Starting watchtower..."
	@./bin/service-up watchtower

stop-services: mysql-down redis-down watchtower-down

mysql-down:
	@echo "Stopping mysql..."
	@./bin/service-down mysql

redis-down:
	@echo "Stopping redis..."
	@./bin/service-down redis

watchtower-down:
	@echo "Stopping watchtower..."
	@./bin/service-down watchtower
