pipeline {
    agent any
    stages {
        stage('build Docker image') {
            withCredentials( [usernamePassword( credentialsId: 'dockerhub',
                                          usernameVariable: 'USERNAME',
                                          passwordVariable: 'PASSWORD')])
            steps {
                sh 'docker login -u $USERNAME -p $PASSWORD'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'docker build -f Dockerfile -t application_enrollment:latest .'
                sh 'docker push application_enrollment:latest'

            }
        }
    }
}
