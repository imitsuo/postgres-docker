infra:
	docker pull postgres:13
	docker stop psql1 || true
	docker rm psql1 || true
	docker run --name psql1 -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
