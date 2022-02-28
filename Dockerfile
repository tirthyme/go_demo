FROM golang:alpine

WORKDIR /backend

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 8090

CMD ["./main"]