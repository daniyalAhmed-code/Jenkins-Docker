pipeline {
    agent { label 'ssh-slave'}
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