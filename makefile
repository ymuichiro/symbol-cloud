CONTAINER_NAME = 9ea96e34b8f6
DB_NAME = mysql

# データベースをダンプ（実行後待ち受けになるのでパスワードを打つこと
dump:
	docker exec -it $(CONTAINER_NAME) mysqldump -uroot -p --single-transaction $(DB_NAME) > backup.sql

# データベースをリストア
restore:
	docker exec -i $(CONTAINER_NAME) mysql -uroot -p $(DB_NAME) < backup.sql