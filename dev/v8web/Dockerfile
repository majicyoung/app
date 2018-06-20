FROM openjdk:8-jdk-alpine

VOLUME /tmp

ARG JAR_FILE

COPY ${JAR_FILE} v8web-rest-api.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/v8web-rest-api.jar"]