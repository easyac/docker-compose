start:
	docker-compose stop && docker-compose rm -f \
	&& docker pull easyac/nginx \
	&& docker pull easyac/api \
	&& docker pull easyac/workers \
	&& docker-compose up -d

start-local:
	docker-compose stop && docker-compose rm -f \
	&& docker-compose --file docker-compose.dev.yml up -d \
	&& docker-compose logs -f

stop:
	docker-compose stop

logs:
	docker-compose logs -f

query_mongo:
	docker exec -it compose_mongo_1 mongo easyac

export-db:
	sh ./scripts/export.db.sh
