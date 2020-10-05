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
             dockerfile {
                dir 'Dockerfiles'
             }
           steps{
             echo 'Hello World'
             sh 'myCustomEnvVar = $myCustomEnvVar'
    
             }
            }
        }
    }
    }
