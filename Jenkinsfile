pipeline {
  agent {label 'ssh-slave'}
  stages {
   stage('Building image') {
      steps{
        script {
          docker.build('daniyal-repo')
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'dev', variable: 'AWS_ACCESS_KEY_ID']]) {
               sh "echo this is ${env.AWS_ACCESS_KEY_ID}"
               sh "echo this is ${env.AWS_SECRET_ACCESS_KEY}"
       } 
         
        }
      }
    }
  }
}