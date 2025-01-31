# Base image
FROM openjdk:18-jdk-alpine

# Install required dependencies
RUN apk --no-cache add git curl maven

# Set working directory
WORKDIR /app

# Copy project files (excluding `src` to use caching efficiently)
COPY target/bankingapp-discovery-service.jar discovery-service.jar

# Run the application
ENTRYPOINT ["java", "-jar", "discovery-service.jar"]
