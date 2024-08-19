// Package main
package main

import (
	"log"

	gs "github.com/w40141/go-db-test/pkg/gorm-sample"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func main() {
	dsn := "user:pass@tcp(127.0.0.1:3306)/dbname?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatalf("error connecting to the database: %v", err)
	}
	db.AutoMigrate(&gs.User{})
}
