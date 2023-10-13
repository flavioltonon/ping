# ping

A simple server with a `GET /ping` route written in Go. Very useful for testing purposes.

## Running locally

You can start the server by running `go run main.go` in a terminal. The server exposes a single endpoint, which can be called at `GET localhost:8080/ping`.

## Running in Docker-friendly environments

You can choose one of the available [Docker images](https://hub.docker.com/r/flavioltonon/ping) and deploy it anywhere.