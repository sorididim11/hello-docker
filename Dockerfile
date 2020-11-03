FROM java:7

RUN mkdir -p /data/bin
copy HelloDocker.java /data/src/HelloDocker.java 

WORKDIR /data
RUN javac -d bin src/HelloDocker.java

EXPOSE 80 8080

VOLUME ["/data/myvol"]

ENTRYPOINT ["java", "-cp", "bin", "HelloDocker"]
