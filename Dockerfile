FROM bellsoft/liberica-openjdk-alpine:17
ARG JAR_FILE=build/libs/config-server-0.0.2.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]