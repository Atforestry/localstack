start:
	docker-compose up -d --build
	docker-compose logs -f --tail=40

stop:
	docker-compose down

logs:
	docker-compose logs -f service