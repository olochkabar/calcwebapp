pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
               git credentialsId: 'GitHub', url: 'https://github.com/olochkabar/calcwebapp'
            }
        }
    }
}