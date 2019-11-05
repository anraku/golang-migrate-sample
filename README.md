## マイグレーションファイル作成
```
doc run migrate migrate create -ext sql -dir db/migrations -seq create_tests_table
```

## マイグレーション実行
```
// データ作成
docker-compose run migrate migrate -source file://db/migrations -database 'mysql://root:test@tcp(127.0.0.1:3306)/test' up 1

// データリセット
docker-compose run migrate migrate -source file://db/migrations -database 'mysql://root:test@tcp(127.0.0.1:3306)/test' down 1
```