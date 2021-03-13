
FROM golang:latest

LABEL maintainer="lukapiske <lukapiske@gmail.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 8888

ENTRYPOINT ["main"]
CMD ["--help"]
