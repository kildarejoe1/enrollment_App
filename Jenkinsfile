pipeline {
    agent any
    stages {
        stage('build Docker image') {
            steps {
                sh 'python -m pytest -v'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'docker build -f Dockerfile -t application_enrollment:latest .'
                sh 'docker push application_enrollment:latest'

            }
        }
    }
}
