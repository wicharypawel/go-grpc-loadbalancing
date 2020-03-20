FROM golang
RUN go get -u google.golang.org/grpc
WORKDIR /go/src/go-grpc-loadbalancing
COPY . .
RUN go build ./main.go
ENTRYPOINT ["/go/src/go-grpc-loadbalancing/main"]