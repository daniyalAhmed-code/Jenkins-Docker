pipeline {
    agent { label 'ssh-slave' && dockerfile true }
    stages{
        stage('Example'){
            steps{
                echo 'Hello World'
                sh 'myCustomEnvVar = $myCustomEnvVar'
            }
        }
    }
}