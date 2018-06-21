FROM openjdk:8-jdk-alpine

VOLUME /tmp

ARG JAR_FILE=target/v8web-1.0.0-SNAPSHOT.jar

COPY ${JAR_FILE} v8web-rest-api.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/v8web-rest-api.jar"]
