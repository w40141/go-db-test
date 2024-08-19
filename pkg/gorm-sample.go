// Package pkg is a orm sample package.
package pkg

import (
	"gorm.io/gorm"
)

// User is a struct that represent the user table
type User struct {
	gorm.Model
	Name string
	Age  uint8
}

// Car is a struct that represent the car table
type Car struct {
	gorm.Model
	UserID  uint
	User    User `gorm:"foreignKey:UserID"`
	Name    string
	OwnerID uint
}
