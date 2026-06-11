pipeline {
    agent any
    
    tools {
        maven 'Maven3'
    }
    
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/user-123-prog/springboot-cicd-jenkins-docker-kubernetes.git'
            }
        }
        
        stage('Maven Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        
        stage('Docker Build') {
            steps {
                sh 'docker build -t springboot-app:latest .'
            }
        }
    }
}
