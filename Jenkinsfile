pipeline {
    agent any
    tools {
        maven "maven"
    }
    stages {
        stage('gitpull') {
            steps {
               git credentialsId: 'GitHub', url: 'https://github.com/olochkabar/calcwebapp'
            }
        }
        stage('build') {
            steps {
                sh "mvn package"
            }
        }
        stage('quality') {
            steps {
                sh "mvn sonar:sonar -Dsonar.projectKey=calc -Dsonar.host.url=http://35.183.9.222:9000 -Dsonar.login=971937ee857342c83e5fddf00f185190123a6e09"
            }
        }
    }
}