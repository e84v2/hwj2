FROM ubuntu:16.04

LABEL "Maintainer"="erkin"

#RUN apt-get update && apt-get install -y software-properties-common

#RUN apt-get install -y iputils-ping

#RUN apt-get install -y vim
#RUN apt-get install -y mysql-client

RUN apt-get update && apt-get install -y default-jdk maven

ADD . /usr/local/hwj

RUN cd /usr/local/hwj && mvn assembly:assembly

CMD ["java", "-cp", "/usr/local/hwj/target/hwj-1.0-SNAPSHOT-jar-with-dependencies.jar", "home.my.Main"]


