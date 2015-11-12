FROM java:7
MAINTAINER Michii
ENV FOO bar
COPY src /home/root/javaHelloWorld/src
WORKDIR /home/root/javaHelloWorld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin","HelloWorld"]

