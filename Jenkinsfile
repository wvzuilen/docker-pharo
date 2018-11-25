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
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'docker push wvzuilen/pharo'
            }
        }
    }
}
