start:
	docker-compose stop && docker-compose rm -f \
	&& docker pull easyac/nginx \
	&& docker pull easyac/api \
	&& docker-compose up -d

stop:
	docker-compose stop

logs:
	docker-compose logs -f