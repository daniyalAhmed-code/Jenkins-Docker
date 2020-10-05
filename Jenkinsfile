pipeline {
  // Assign to docker slave(s) label, could also be 'any'
  agent {
    label 'ssh-slave' 
  }

  stages {
    stage('Docker node test') {
      agent {
        docker {
          // Set both label and image
          label 'ssh-slave'
          image 'node:7-alpine'
          args '--name docker-node' // list any args
        }
      }
      steps {
        // Steps run in node:7-alpine docker container on docker slave
        sh 'node --version'
      }
    }
  }
} 
