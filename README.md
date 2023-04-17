# counter_service_react_integration
## Add profile
### spring.profiles.active=@spring.profiles.active@
## Start app by running commands
### ./mvnw spring-boot:run -Pprod

## Building Docker image
### docker build --build-arg JAR_FILE=target/.*jar -t dasari508201/counter_service_react .
## Running Docker image
### docker run -p 8080:8080 dasari508201/counter_service_react