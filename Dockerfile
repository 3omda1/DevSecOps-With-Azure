FROM openjdk:18-jdk-slim
#openjdk:18-jdk-slim

# Set work directory
WORKDIR /app

# Copy Gradle build files and source code
COPY . .

# Build the application
RUN ./gradlew build 

# Copy built JAR file
RUN cp build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
