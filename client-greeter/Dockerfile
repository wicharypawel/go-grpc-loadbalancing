FROM golang:1.14.1
RUN go get -u google.golang.org/grpc
WORKDIR /go/src/go-grpc-loadbalancing/client-greeter
COPY . .
RUN go build ./main.go
ENTRYPOINT ["/go/src/go-grpc-loadbalancing/client-greeter/main"]