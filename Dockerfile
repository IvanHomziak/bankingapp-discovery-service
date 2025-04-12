# Base image
FROM eclipse-temurin:18-jdk

# Install required dependencies for build
RUN apt-get update && \
    apt-get install -y git curl maven && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy project files (excluding `src` to use caching efficiently)
COPY target/bankingapp-discovery-service.jar discovery-service.jar

# Run the application
ENTRYPOINT ["java", "-jar", "discovery-service.jar"]
