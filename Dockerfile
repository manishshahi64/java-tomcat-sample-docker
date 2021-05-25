From tomcat:9.0.45

ADD **/*.war C:\myJenkinsTomCat\tomcat_new\webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]