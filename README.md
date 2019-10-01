# grpc-web-sample


## Install
``` shell
cd backend
go get -u -v google.golang.org/grpc
go get -u github.com/golang/protobuf/protoc-gen-go

cd grpc-web-sample
brew install protobuf
sh grpc-plugin-install.sh
```

## If not set Golang Path
``` shell
export PATH=$PATH:${GOPATH}/bin
```

## Generate
``` shell
sh gen-protobufs.sh
```
