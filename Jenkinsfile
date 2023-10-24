pipeline {
    agent any

    stages {
        stage('pull') {
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