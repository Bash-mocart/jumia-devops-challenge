pipeline {
  agent any
 
tools {
jdk 'JDK8'
maven 'maven'
}
  stages {
    stage ('checkout') {
      steps {
          git branch: 'main', url: 'https://github.com/Bash-mocart/jumia-devops-challenge'
      }
    }
    stage ('Build') {
      steps {
          dir('terraform/DevOps-Challenge-main/jumia_phone_validator/validator-backend/') {
    // some block
            sh 'mvn clean install'
         }
      
      }
    }
}
}
