FROM golang:1.21.1-alpine3.18 as builder

RUN apk update && apk add ca-certificates

WORKDIR /app

COPY . .

RUN go build .

FROM scratch

COPY --from=builder /app/ping /bin

CMD [ "ping" ]