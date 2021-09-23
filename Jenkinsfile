pipeline {
    agent none

    stages {
        stage('npm commands') {
            agent {
                docker { image 'node:16-alpine' }
            }
            steps {
                sh "npm -v"
            }
        }
        
        stage('Build') {
            steps {
                echo 'Build the application'
            }
        }
        stage('Test') {
            steps {
                echo 'Run the tests'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}