package main

import (
	"api/db/lahman"

	"context"
	"database/sql"
	"fmt"
	"os"

	_ "github.com/lib/pq"
)

func testGetBattingSeason() int {
	var (
		host     = os.Getenv("PG_HOST")
		user     = os.Getenv("PG_USER")
		password = os.Getenv("PG_PASSWORD")
		dbname   = "postgres"
	)

	ctx := context.Background()

	psqlInfo := fmt.Sprintf("host=%s port=5432 user=%s "+
		"password=%s dbname=%s sslmode=disable",
		host, user, password, dbname)

	db, _ := sql.Open("postgres", psqlInfo)
	defer db.Close()

	queries := lahman.New(db)
	record, _ := queries.GetBattingSeasonById(ctx, 435)

	return int(record.Year)
}
