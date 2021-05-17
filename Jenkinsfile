pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                bat 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
            }
        stage('Create tomcat docker image'){
            steps{
                bat "docker build ./java-tomcat-sample-Docker -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }
           
    }
}