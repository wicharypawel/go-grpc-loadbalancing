# Go Grpc Loadbalancing

__This repository is a part of https://github.com/wicharypawel/net-core-grpc-load-balance repository.__

This repository defines gRPC greeter clients written in GO. Clients are:
- simple greeter,
- round-robin greeter,
- lookaside greeter,

## Docker commands used to build clients 

__NOTE: Helloworld.proto is slightly different than hello world example by gRPC__

```
docker build -t go-grpc-client-greeter -f ./client-greeter/Dockerfile ./client-greeter
docker build -t go-grpc-client-round-robin -f ./client-round-robin/Dockerfile ./client-round-robin
docker build -t go-grpc-client-lookaside -f ./client-lookaside/Dockerfile ./client-lookaside
```

## Source

- https://github.com/grpc/grpc/blob/master/doc/load-balancing.md
- https://www.marwan.io/blog/grpc-dns-load-balancing
- https://medium.com/engineering-at-palo-alto-networks/large-scale-data-ingestion-using-grpc-envoy-and-istio-in-cortex-data-lake-ec82ea87fa3b
- https://github.com/grpc/grpc-go/issues/2854
- https://www.docker.com/blog/docker-golang/