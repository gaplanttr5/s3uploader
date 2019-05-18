all:
	make credential
	make setup
	make run

setup:
	docker build -t sample .

run:
	docker run --env-file=.env -it --rm sample

ssh:
	docker run --env-file=.env -it --rm sample /bin/sh

credential:
	env | grep 'AWS_ACCESS_KEY_ID\|AWS_SECRET_ACCESS_KEY' > .env
