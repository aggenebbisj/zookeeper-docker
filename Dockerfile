FROM csc/ubuntu

MAINTAINER Remko de Jong <remko.de.jong@ordina.nl>

ADD http://ftp.nluug.nl/internet/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz /zookeeper.tar.gz

RUN mkdir -p zoo && \
  cd zoo && \
  tar xvfz ../zookeeper.tar.gz --strip-components=1 && \
  rm /zookeeper.tar.gz

COPY zoo.cfg /zoo/conf/zoo.cfg

CMD ["/zoo/bin/zkServer.sh", "start-foreground"]

EXPOSE 2888 3888 2181
