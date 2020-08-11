pipeline {
    environment {
        registry = "2121994/movie-info-service"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
     
        stage('Build Docker Images') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Upload image to docker') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                        
                    }
                }
            }
        }
        stage('Remove Unused docker image locally') {
           
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
      
            }
        }
      
      
 
       
    }
}