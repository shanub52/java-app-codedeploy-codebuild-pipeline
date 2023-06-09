#!/bin/bash
set -e
# Define the path to the WAR file
WAR_FILE=/opt/myapp/gs-spring-boot-0.1.0.jar

# Define the path to the Tomcat installation directory
TOMCAT_DIR=/opt/tomcat

# Stop the Tomcat server
#sudo systemctl stop tomcat

# Remove the old application files
sudo rm -rf $TOMCAT_DIR/webapps/gs-spring-boot-0.1.0.jar

# Copy the new WAR file to the Tomcat webapps directory
sudo cp $WAR_FILE $TOMCAT_DIR/webapps/

# Start the Tomcat server
#sudo systemctl start tomcat
