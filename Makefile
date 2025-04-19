.PHONY: up console down

up:
	docker compose up -d

console: up
	docker compose exec army irb -r ./main.rb

down:
	docker compose down
