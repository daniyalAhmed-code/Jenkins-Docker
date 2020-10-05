pipeline {
    agent { label 'ssh-slave'
                    dockerfile true
    
    }
    stages{
        stage('Example'){
            agent { 
                dockerfile true
                }
            steps{
                echo 'Hello World'
               sh 'myCustomEnvVar = $myCustomEnvVar'
            }
        }
    }
}