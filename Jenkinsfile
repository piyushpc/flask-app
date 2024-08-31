pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('flask-app')
                }
            }
        }
        stage('Test') {
            steps {
                // Add any testing commands here
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.run('-d -p 5000:5000 flask-app')
                }
            }
        }
    }
}
