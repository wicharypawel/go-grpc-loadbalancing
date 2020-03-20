FROM golang:1.14.1
RUN go get -u google.golang.org/grpc
RUN go get -u github.com/google/go-cmp/cmp
WORKDIR /go/src/go-grpc-loadbalancing/client-lookaside
COPY . .
RUN go build ./main.go
ENTRYPOINT ["/go/src/go-grpc-loadbalancing/client-lookaside/main"]