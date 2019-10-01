#!/bin/sh
git clone https://github.com/grpc/grpc-web /tmp/grpc-web
cd /tmp/grpc-web/ || exit
make install-plugin
