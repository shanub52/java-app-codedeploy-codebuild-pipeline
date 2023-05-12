#!/bin/bash
set -e

echo "Deploying WAR file to Tomcat server..."

# Stop Tomcat server
sudo systemctl stop tomcat

# Remove old deployment artifacts
sudo rm -rf /opt/tomcat/webapps/gs-spring-boot-0.1.0.jar

# Copy new WAR file to Tomcat webapps directory
sudo cp /opt/myapp//gs-spring-boot-0.1.0.jar /opt/tomcat/webapps/

# Start Tomcat server
sudo systemctl start tomcat

echo "Deployment complete."
