# Java 17 runtime image
FROM eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy generated JAR file
COPY target/demoproject-0.0.1-SNAPSHOT.jar app.jar

# Application port
EXPOSE 8080

# Start Spring Boot application
CMD ["java", "-jar", "app.jar"]