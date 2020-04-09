pipeline {
    agent any
    withCredentials( [usernamePassword( credentialsId: 'dockerhub',
                                      usernameVariable: 'USERNAME',
                                      passwordVariable: 'PASSWORD')])
    stages {
        stage('build Docker image') {
            steps {
                sh 'docker login -u $USERNAME -p $PASSWORD'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'docker build -f Dockerfile -t application_enrollment:latest .'
                docker push application_enrollment:latest
                
            }
        }
    }
}
