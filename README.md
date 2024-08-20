# go-db-test

GormのstructからSQLの差分を生成する。

```sh
atlas migrate diff --env gorm
```

マイグレーションを実行する。

```sh
atlas migrate apply -u "mysql://root:root@localhost:13306/sample"
```
