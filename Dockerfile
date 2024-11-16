# Use a smaller, secure, and up-to-date base image for Java 17
FROM openjdk:17-jre-slim
# Expose the application port
EXPOSE 8080

# Set environment variables
ENV APP_HOME=/usr/src/app
ENV APP_JAR=app.jar

# Create the application directory
WORKDIR $APP_HOME

# Copy the built JAR file from your pipeline's Maven target directory
COPY target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/$APP_JAR

# Define the entry point command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
