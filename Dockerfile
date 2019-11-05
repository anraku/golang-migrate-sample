FROM golang:1.13-alpine AS build

RUN apk add --no-cache git

RUN go get -tags 'mysql' -u github.com/golang-migrate/migrate/cmd/migrate

FROM alpine:3.10

WORKDIR /root

COPY --from=build /go/bin/migrate /usr/local/bin/migrate