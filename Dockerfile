FROM centos:centos7

RUN yum -y install golang
COPY helloworld.go /opt/helloworld/helloworld.go
RUN CGO_ENABLED=0 go build -a -o /opt/helloworld/helloworld /opt/helloworld/helloworld.go
COPY Dockerfile.run /opt/helloworld/Dockerfile
CMD docker build -t wrighty/helloworld /opt/helloworld
