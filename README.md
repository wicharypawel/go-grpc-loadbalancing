# go-grpc-loadbalancing

## Build images
docker build -t grpc-server:latest -f .\NetCoreGrpc.ServerApp\Dockerfile .
docker build -t go-grpc-client .

## Create containers
docker network create mynet
docker run -d --network=mynet --name=grpc-server grpc-server 
docker run -d --network=mynet --name=grpc-client go-grpc-client

## Verify
docker logs grpc-client

## Cleanup
docker rm grpc-client -f
docker rm grpc-server -f
docker network rm mynet