# Blueprint for building a Dockerfile for golang app

FROM golang:1.20-alpine

WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o main .

CMD ["/app/main"]

