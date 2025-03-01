pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                //   Ur branch URL generate from pipeline Syntax 
                git branch: 'main', url: 'https://github.com/UshaPriyanka15/Revise-Project.git'
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t httpd:latest .'
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    sh 'docker rm -f httpd-image || true'
                    
                    // Run the new container
                    sh 'docker run -d -p 80:80 --name httpd-image my-httpd-app'
                }
            }
        }
        
        stage('Verify') {
            steps {
                // Simple verification that container is running
                sh 'docker ps | grep httpd-image'
            }
        }
    }
}
