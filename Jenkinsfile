pipeline {
    agent any
    environment {
        AWS_REGION = 'eu-north-1'
        TF_BUCKET_NAME = 'my-first-bucket-using-terraform-Jenkins' // Match the bucket name in your Terraform code
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Prerit1221/S3-using-terraform.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh '''
                terraform init \
                -backend-config="bucket=${TF_BUCKET_NAME}" \
                -backend-config="region=${AWS_REGION}"
                '''
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -input=false -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -input=false -auto-approve tfplan'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '**/*', allowEmptyArchive: true
            cleanWs() // Clean up workspace after execution
        }
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
