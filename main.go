package main

import (
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

func setupRouter() *gin.Engine {
	r := gin.Default()
	return r
}

func main() {
	env := os.Getenv("APP_ENV")
	if env != "PRODUCTION" {
		godotenv.Load(".env")
	}

	// Listen and Server in 0.0.0.0:8080
	r := setupRouter()
	r.Run(":8080")
}
