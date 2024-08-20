// Package main
package main

// "github.com/w40141/go-db-test/pkg"

func main() {
	_ = "user:password@tcp(127.0.0.1:13306)/sample?charset=utf8mb4&parseTime=True&loc=Local"

	// migrator := map[string]func(string) error{
	// 	"gorm": pkg.Migrate,
	// }

	// if err := migrator["gorm"](dsn); err != nil {
	// 	log.Fatalf("error migrating: %v", err)
	// }
}
