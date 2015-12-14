FROM flurdy/oracle-java8:latest

MAINTAINER Oleksii Fedorov <waterlink000@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -yq wget unzip && \
  apt-get autoremove -yq && \
  apt-get clean -yq && \
  rm -rf /var/lib/apt/lists/*

ENV ACTIVATOR_VERSION 1.3.4

RUN cd /tmp && \
  wget  --progress=dot:mega http://downloads.typesafe.com/typesafe-activator/$ACTIVATOR_VERSION/typesafe-activator-$ACTIVATOR_VERSION.zip

RUN cd /tmp && \
  unzip typesafe-activator-$ACTIVATOR_VERSION.zip && \
  mkdir /opt/typesafe && \
  mv /tmp/activator-$ACTIVATOR_VERSION /opt/typesafe/activator-$ACTIVATOR_VERSION && \
  ln -s /opt/typesafe/activator-$ACTIVATOR_VERSION/activator /usr/local/bin/activator && \
  rm /tmp/typesafe-activator-$ACTIVATOR_VERSION.zip

EXPOSE 8888
