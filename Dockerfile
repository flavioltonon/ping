FROM golang:1.21.1-alpine3.18 as builder

RUN apk update && apk add ca-certificates

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o ./bin/ping .

FROM scratch

COPY --from=builder /app/bin/ping /
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

CMD [ "/ping" ]