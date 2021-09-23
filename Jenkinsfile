pipeline {
    agent none

    stages {
        stage('npm commands') {
            agent {
                docker { image 'node:16-alpine' }
            }
            steps {
                dir("${env.WORKSPACE}/DotnetTemplate.Web"){
                    sh "pwd"
                    echo "Building the Typescript code"
                    sh "npm install"
                    sh "npm run build"
                    echo "Runs the lint"
                    sh "npm run lint"
                    echo "Runs the Typescript code"
                    sh "npm t"
                }
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