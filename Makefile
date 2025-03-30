.DEFAULT_GOAL := help

.PHONY: ps
ps: ## コンテナ状態確認
	docker ps

.PHONY: psa
psa: ## 各種コンテナ状態確認
	docker ps -a

.PHONY: build
build: ## ビルド
	docker compose build

.PHONY: up
up: ## コンテナ起動
	docker compose up -d

.PHONY: down
down: ## コンテナ削除
	docker compose down

.PHONY: app-bash
app-sh: ## appコンテに入る
	docker compose exec app sh

.PHONY: nginx-bash
nginx-sh: ## nginxコンテに入る
	docker compose exec nginx sh

.PHONY: mysql-bash
mysql-sh: ## mysqlコンテに入る
	docker compose exec mysql sh

## TODO: stan, ESLintの追加後、Makeコマンドを追加する
