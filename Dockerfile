FROM golang:1.23-rc-alpine

WORKDIR /demo

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /godemo

EXPOSE 8080

CMD [ "/godemo" ]