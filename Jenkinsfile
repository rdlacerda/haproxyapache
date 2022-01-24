pipeline {
  agent any

  stages {
    stage("Docker build") {
      echo 'Construindo imagens a partir do dockerfile'
      sh 'cd compose/haproxy_apache/'
      sh 'docker-compose build'
    }
    stage("Deploy app") {
      echo 'Deploy app'
      sh 'docker-compose -p haproxyapache -f docker-compose.yml up -d --scale apache=10'
    }
  } 
}
