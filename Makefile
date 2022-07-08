default:
	echo "Please select a valid option"

start:
	docker-compose up -d

stop:
	docker-compose stop

restart:
	docker-compose stop
	docker-compose up -d

cleanup:
	docker-compose down
