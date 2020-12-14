serve:
	@echo Starting develop box...
	@docker-compose -f "docker-compose.yml" up -d --build

destroy:
	@echo Removing develop box...
	@docker-compose -f "docker-compose.yml" down
