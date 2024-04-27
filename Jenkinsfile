pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/IamBrinda/infraterraformandjenkins.git']]])
             }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init -no-color -reconfigure') 
            }
        }
        stage ("terraform plan") {
            steps {
                sh ('terraform plan -out=tfplan')
            }
        }
                
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh 'terraform apply tfplan'
                sh ('terraform ${action} --auto-approve -no-color')
           }
        }
    }
}
