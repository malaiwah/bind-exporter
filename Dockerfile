FROM golang

WORKDIR /go/src/app

RUN go get github.com/digitalocean/bind_exporter
RUN cd $GOPATH/src/github.com/digitalocean/bind_exporter && make

CMD ["bind_exporter"]
