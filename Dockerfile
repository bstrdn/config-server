FROM bellsoft/liberica-openjdk-alpine:latest-aarch64
ARG JAR_FILE=build/libs/config-server-0.0.1.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]