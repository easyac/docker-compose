start:
	docker-compose stop && docker-compose rm -f \
	&& docker pull easyac/nginx \
	&& docker pull easyac/api \
	&& docker pull easyac/worker \
	&& docker-compose up -d

start-local:
		docker-compose stop && docker-compose rm --all -f \
		&& docker-compose --file docker-compose.dev.yml up -d \
		&& docker-compose logs -f

stop:
	docker-compose stop

logs:
	docker-compose logs -f
