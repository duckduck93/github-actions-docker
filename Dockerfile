# Start with a base image containing Java runtime
FROM openjdk:17-alpine

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=./build/libs/github-actions-docker-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} github-actions-test.jar

# Run the jar file
ENTRYPOINT ["java","-Duser.timezone=Asia/Seoul","-jar","/github-actions-test.jar"]
