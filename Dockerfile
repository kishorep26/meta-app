# Build Stage
FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run Stage
FROM tomcat:9.0-jdk11-openjdk-slim

# Copy the WAR file
COPY --from=build /app/target/TrainingInstitute.war /usr/local/tomcat/webapps/ROOT.war

# Disable Tomcat shutdown port (fixes "Invalid shutdown command" errors on Render)
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml

# Create a startup script that sets environment variables
RUN echo '#!/bin/bash\n\
    export DB_URL="${DB_URL}"\n\
    export DB_USER="${DB_USER}"\n\
    export DB_PASS="${DB_PASS}"\n\
    catalina.sh run' > /usr/local/tomcat/bin/start.sh && \
    chmod +x /usr/local/tomcat/bin/start.sh

# Expose port 8080 (default for Tomcat)
EXPOSE 8080

# Use the startup script
CMD ["/usr/local/tomcat/bin/start.sh"]
