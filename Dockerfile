FROM tomcat:9.0-jdk17-temurin-jammy
COPY /target/*.war /usr/local/tomcat/webapps/calwebapp.war
EXPOSE 8080
