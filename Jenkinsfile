pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build the application'
                dotnet build
            }
        }
        stage('Test') {
            steps {
                echo 'Run the tests'
                dotnet test
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}