node {
  stage 'Docker build'
  docker.build('daniyal-repo')
 
  stage 'Docker push'
  docker.withRegistry('https://020046395185.dkr.ecr.us-east-2.amazonaws.com', 'ecr:aws_credentials') {
    docker.image('demo').push('latest')
  }
}