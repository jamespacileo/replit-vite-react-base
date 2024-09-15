# Makefile

.PHONY: install dev build lint format test docker-build docker-run clean

install:
	bun install

dev:
	bun run dev

build:
	bun run build

lint:
	bun run lint

format:
	bun run format

test:
	bun run test

docker-build:
	docker build -t react-shadcn-template .

docker-run:
	docker-compose up

clean:
	rm -rf node_modules dist
