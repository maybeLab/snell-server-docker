## snell-server website

https://github.com/surge-networks/snell/releases/

## execute command

1. change snell-server.conf and save it.
1. run `` docker run -d -p <port>:<port> -p <port>:<port>/udp --name snell-server -v `pwd`:/etc/snell/ --restart=always --privileged shoyuf/snell-server:3.0.1 ``

## Environment

linux-amd64
