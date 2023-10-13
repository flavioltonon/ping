package main

import "net/http"

func main() {
	mux := http.NewServeMux()

	mux.HandleFunc("/ping", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Pong"))
	})

	http.ListenAndServe(":8080", mux)
}
