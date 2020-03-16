package main

import (
	"net/http"

	"github.com/labstack/echo"
)

func handler(c echo.Context) error {
	return c.String(http.StatusOK, "Hello World Master")
}

func main() {
	e := echo.New()

	e.GET("/", handler)

	e.Logger.Fatal(e.Start(":5000"))
}
