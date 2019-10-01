# grpc-web-sample


## Install
``` shell
go get -u -v google.golang.org/grpc
brew install protobuf
go get -u github.com/golang/protobuf/protoc-gen-go
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
