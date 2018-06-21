.PHONY: build test

docker.image:
	@printf "\033[0;32m>>> Building docker image\033[0m\n"
	docker build -t verifiki8/v8web-1.0.0-snapshot:local .

docker.run:
	@printf "\033[0;32m>>> Starting docker container\033[0m\n"
	docker run -p 5000:8080 verifiki8/v8web-1.0.0-snapshot:local

install:
	@printf "\033[0;32m>>> installing packages \033[0m\n"
	mvn clean install

run:
	@printf "\033[0;32m>>> Running in developement environment \033[0m\n"
	mvn spring-boot:run

test:
	@printf "\033[0;32m>>> Running tests \033[0m\n"
	mvn test

