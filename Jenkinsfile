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
         docker.withRegistry('https://020046395185.dkr.ecr.us-east-2.amazonaws.com', 'ecr:us-east-2:aws_credentials') {
    docker.image('daniyal-repo').push('latest')
  }
         
        }
      }
    }
  }
}
