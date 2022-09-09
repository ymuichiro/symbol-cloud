CONTAINER_NAME = 7f7f741372ba
DB_NAME = main

# データベースをダンプ（実行後待ち受けになるのでパスワードを打つこと
dump:
	docker exec -it $(CONTAINER_NAME) mysqldump -uroot -p --single-transaction $(DB_NAME) > backup.sql

# データベースをリストア
restore:
	docker exec -i $(CONTAINER_NAME) mysql -uroot -p $(DB_NAME) < backup.sql