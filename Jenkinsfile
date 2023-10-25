pipeline {
    agent any
    tools {
        maven "maven"
    }
    stages {
        stage('gitclone') {
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
                  script {

                }
            }
        }
        stage('artifactory') {
            steps {
            
            }
        }
        stage('docker build') {
            steps {
                script {

                }
            }
        }
        stage('docker push') {
            steps {
                script {

                }
            }
        }
    }
}