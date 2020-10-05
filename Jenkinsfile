pipeline {
    agent { dockerfile true
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