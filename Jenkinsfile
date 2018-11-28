pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker login'
                sh 'docker build -t wvzuilen/pharo:latest .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Pushing to Docker Hub...'
                sh 'docker push wvzuilen/pharo:latest'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
