.PHONY: call clean up

up: clean
	docker-compose up -d
	echo "Waiting..." && sleep 10
	docker exec -t dev_airflow_scheduler /usr/local/airflow/init.sh

call:
	docker exec -it dev_airflow_scheduler airflow $(filter-out $@,$(MAKECMDGOALS))

clean:
	docker-compose down

%:
	@: