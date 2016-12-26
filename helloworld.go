package main

import (
  "fmt"
  "net/http"
)

const (
  port = ":8080"
)

var calls = 0

func HelloWorld(w http.ResponseWriter, r *http.Request) {
  calls++
  fmt.Fprintf(w, "Hello, world! You have called me %d times.\n", calls)
}

func init() {
  fmt.Printf("Started server at %v.\n", port)
  http.HandleFunc("/", HelloWorld)
  panic(http.ListenAndServe(port, nil))
}

func main() {
	foo := make(chan int)
	<-foo
}
