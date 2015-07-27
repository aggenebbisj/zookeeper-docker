docker build -t aggenebbisj/zookeeper .
docker rm -f myzookeeper
docker run -d -p 2181:2181 --name myzookeeper aggenebbisj/zookeeper
