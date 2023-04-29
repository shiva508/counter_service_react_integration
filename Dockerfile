FROM node as counteruiapp
WORKDIR /counteruiapp
COPY counteruiapp .
RUN npm ci
RUN npm run-script build
FROM maven:3.6.3-jdk-11 as backend
WORKDIR /backend.
COPY backend .
RUN mkdir -p src/main/resources/static
COPY --from=counteruiapp /counteruiapp/build src/main/resources/static
RUN mvn clean verify
FROM eclipse-temurin:17-jdk-alpine
COPY target/*.jar ./counter_service_react_integration.jar
EXPOSE 8080
RUN adduser -D user
USER user
CMD [ "sh", "-c", "java -Dserver.port=$PORT -Dspring.profiles.active=prod -Djava.security.egd=file:/dev/./urandom -jar counter_service_react_integration.jar" ]