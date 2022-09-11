CONTAINER_NAME = abbe6126ceb4
DB_NAME = strapi

# データベースをダンプ（実行後待ち受けになるのでパスワードを打つこと
dump:
	docker exec -it $(CONTAINER_NAME) mysqldump -uroot -p --single-transaction $(DB_NAME) > backup.sql

# データベースをリストア
restore:
	docker exec -i $(CONTAINER_NAME) mysql -uroot -p $(DB_NAME) < backup.sql
