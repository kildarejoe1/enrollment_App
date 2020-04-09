pipeline {
    agent any
    stages {
        stage('build Docker image') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'docker build .'
                echo 'Hello Mr. ${username}'

            }
        }
    }
}
