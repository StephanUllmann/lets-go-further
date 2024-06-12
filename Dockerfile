FROM golang:1.22.2-alpine3.19

WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

CMD ["air", "-c", ".air.toml"]