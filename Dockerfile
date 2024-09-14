# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/my-jfrog-app-1.0-SNAPSHOT.jar /app/my-jfrog-app-1.0-SNAPSHOT.jar

# Expose port if the application listens on a specific port (e.g., 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/my-jfrog-app-1.0-SNAPSHOT.jar"]
