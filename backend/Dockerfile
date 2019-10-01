FROM golang:1.12.5

ENV GO111MODULE=on

WORKDIR /go/src/grpc-web-sample/backend
COPY . .
RUN go get github.com/pilu/fresh
CMD ["fresh"]
EXPOSE 9090
