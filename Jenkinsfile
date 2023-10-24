pipeline {
    agent any
    tools {
        maven "maven3.9.4"
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
                sh "mvn sonar:sonar -Dsonar.login=c0d37e6fb1c673e2a4f6caf2d85c2ae4cd4004ee"
            }
        }
    }
}