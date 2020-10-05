pipeline {
    agent {
       label "ssh-slave"
    }

    stages {
        stage('Normal build') {
           steps {
              echo "Running in ssh-slave"
              sh "which docker"
              sh 'docker image ls'
           }
        } 

        stage ("Docker build") {
           agent{
             Dockerfile true
            }
            steps{
                sh "hostname"
            }
        }
        }
    }

