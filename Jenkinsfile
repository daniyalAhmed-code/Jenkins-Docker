pipeline {
    agent {
       label "ssh-slave"
    }

    stages {
        stage('Normal build') {
           steps {
              echo "Running in ssh-slave"
              sh "hostname"
           }
        } 

        stage ("Docker build") {
           agent{
             dockerfile true  }
           steps{
             echo 'Hello World'
             sh 'myCustomEnvVar = $myCustomEnvVar'
    
             }
            }
        }
    }

