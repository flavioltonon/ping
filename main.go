package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()

	mux.HandleFunc("/ping", func(w http.ResponseWriter, r *http.Request) {
		log.Println("got request")

		w.Write([]byte("Pong"))
	})

	server := &http.Server{
		Addr:    ":8080",
		Handler: mux,
	}

	log.Printf("listening and serving at %s\n", server.Addr)

	server.ListenAndServe()
}
