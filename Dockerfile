FROM bellsoft/liberica-openjdk-alpine:18
ARG JAR_FILE=build/libs/config-server-2.0.0.jar
COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "/app.jar"]
ENTRYPOINT ["java", "-Dspring.profiles.active=test", "-jar", "/app.jar"]