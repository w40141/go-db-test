// Package pkg is a orm sample package.
package pkg

import (
	"gorm.io/gorm"
)

// User is a struct that represent the user table
type User struct {
	gorm.Model
	Name      string
	Age       uint8
	Languages []Language `gorm:"many2many:user_languages;"`
}

// Car is a struct that represent the car table
type Car struct {
	gorm.Model
	OwnerID uint
	User    User `gorm:"foreignKey:OwnerID"`
	Name    string
}

// Language is a struct that represent the language table.
type Language struct {
	gorm.Model
	Name string
}

// // Migrate is a function to migrate the table.
// func Migrate(dsn string) error {
// 	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
// 	if err != nil {
// 		return fmt.Errorf("error connecting to the database: %v", err)
// 	}
//
// 	if e := db.AutoMigrate(&User{}, &Car{}, Language{}); e != nil {
// 		return fmt.Errorf("error migration: %v", e)
// 	}
// 	return nl
// }
