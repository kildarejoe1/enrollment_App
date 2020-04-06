pipeline {
    agent any
    stages {
        stage('build Docker image') {
            steps {
                sh 'docker build .'
            }
        }
    }
}
