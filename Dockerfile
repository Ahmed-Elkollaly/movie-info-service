# Maven build container 

FROM maven:3.5.2-jdk-8-alpine AS maven_build

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

#Pull base image
FROM openjdk:8-jdk-alpine
EXPOSE 8080
CMD java -jar /data/movie-info-service-0.0.1-SNAPSHOT.jar

COPY --from=maven_build /tmp/target/movie-info-service-0.0.1-SNAPSHOT.jar /data/movie-info-service-0.0.1-SNAPSHOT.jar