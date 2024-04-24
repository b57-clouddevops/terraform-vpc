pipeline {
    agent any 
    stages {
        stage('Terraform Init') {
            steps {
                sh "terrafile -f env-dev/Terrafile"
                sh "terraform init --backend-config=env-dev/dev-backend.tfvars"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan --var-file env-dev/dev.tfvars"
            }
        }
        stage('Terraform Action') {
            steps {
                sh "terraform apply -auto-approva --var-file env-dev/dev.tfvars"
            }
        }
    }
}