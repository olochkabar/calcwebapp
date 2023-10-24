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
    }
}