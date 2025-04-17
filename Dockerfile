FROM tomcat:9.0-jdk17

# Step 2: Clean up default apps that come with Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

COPY /var/lib/jenkins/workspace/scenario/target/myweb-0.0.3.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose the default port Tomcat listens on
EXPOSE 8080

# Step 5: Start the Tomcat server
CMD ["catalina.sh", "run"]

