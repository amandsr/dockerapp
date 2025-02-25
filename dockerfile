# Use a Tomcat image to deploy the WAR file
FROM tomcat:9.0.65-jdk11-openjdk

# Copy the generated WAR file to the Tomcat webapps directory
COPY ILPapp.war /usr/local/tomcat/webapps/

#RUN sed -i 's/port="8080"/port="8247"/' ${CATALINA_HOME}/conf/server.xml

RUN sed -i 's/8080/8247/g' /usr/local/tomcat/conf/server.xml

#ADD ./tomcat-cas/war/ ${CATALINA_HOME}/webapps/

# Expose the default Tomcat port

EXPOSE 8247

 

# Start Tomcat

CMD ["catalina.sh", "run"]
