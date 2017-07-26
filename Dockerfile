FROM amazonlinux

RUN set -exu && \
  curl -OLv https://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.gz && \
  tar -xzv -C /usr/local --strip-components 1 -f node-v6.11.1-linux-x64.tar.gz && \
  rm node-v6.11.1-linux-x64.tar.gz && \
  curl -OLv https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz && \
  tar -xzv -C /usr/local -f go1.8.3.linux-amd64.tar.gz && \
  rm go1.8.3.linux-amd64.tar.gz && \
  curl -OLv https://raw.githubusercontent.com/apex/apex/master/install.sh && \
  chmod +x ./install.sh && \
  ./install.sh && \
  rm install.sh && \ 
  mkdir /go && \
  yum update -y && \
  yum install -y findutils

ENV PATH=$PATH:/usr/local/go/bin GOPATH=/go




