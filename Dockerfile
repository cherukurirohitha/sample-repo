FROM tomcat
COPY SampleWebApp.war /usr/local/tomcat/webapps
EXPOSE 8889
CMD [“catalina.sh”, “run”]
