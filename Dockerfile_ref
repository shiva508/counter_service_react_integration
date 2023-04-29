FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} counter_service_react.jar
ENTRYPOINT ["java","-jar","/counter_service_react.jar"]