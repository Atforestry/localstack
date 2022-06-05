start run:
	docker-compose up -d --build
	docker-compose logs -f --tail=40

stop:
	docker-compose down

logs:
	docker-compose logs -f service

pull:
	git pull && \
	cd ../fetch-data && git pull && \
	cd ../batch-run && git pull && \
	cd ../model-predict && git pull && \
	cd ../user-query && git pull && \
	cd ../infrastructure && git pull
	
