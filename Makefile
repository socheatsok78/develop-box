.PHONY: install

install:
	@echo "Pulling images..."
	@./bin/service-pull mysql
	@./bin/service-pull redis

start: mysql redis

mysql:
	@echo "Starting mysql..."
	@./bin/service-up mysql

redis:
	@echo "Starting redis..."
	@./bin/service-up redis
