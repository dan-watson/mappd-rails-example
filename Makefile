build:
	docker-compose build
serve:
	rm -rf tmp/pids/**
	docker-compose run ruby rake db:create
	docker-compose up
guard:
	docker-compose run ruby guard
rspec:
	docker-compose run ruby rspec
lint:
	docker-compose run ruby rubocop
