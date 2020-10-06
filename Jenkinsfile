pipeline {
  agent {label ''}
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
          docker.withRegistry( '020046395185.dkr.ecr.us-east-2.amazonaws.com','ecr:us-east-1:demo-ecr-credentials' ) {
            docker.image('demo').push('latest')
          }
        }
      }
    }
  }
}