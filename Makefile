build:
	protoc -I. --go_out=plugins=grpc:. \
	  proto/consignment/consignment.proto
	go get golang.org/x/sys/unix
	GOOS=linux GOARCH=amd64 go build -o area-influencia
	docker build -t opi-service-area-influencia .

run: 
	docker run -p 50051:50051 opi-service-area-influencia