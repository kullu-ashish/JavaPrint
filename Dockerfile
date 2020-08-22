FROM ubuntu:18.04

# Install dependencies

RUN apt-get update && \
   apt-get -y install openjdk-8-jdk
COPY sample.jar /

RUN chmod 644 /sample.jar

WORKDIR /
