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
                    withSonarQubeEnv() {
                    sh "mvn clean verify sonar:sonar -Dsonar.projectKey=calcwebapp -Dsonar.projectName='calcwebapp'"
                }
            }
        }
        /*stage('artifactory') {
            steps {
            
            }
        }*/
        stage('docker build') {
            steps {
                script {
                withDockerRegistry(credentialsId: 'docker') {
                    sh "docker build -t olochkabar/calcwebapp:2 ."
                   }
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                     withDockerRegistry(credentialsId: 'docker') {
                        sh "docker push olochkabar/calcwebapp:2"
                    }
                }
            }
        }
    }
}