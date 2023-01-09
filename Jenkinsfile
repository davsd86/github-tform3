pipeline {
  agent {label 'docker-slave-cluster'}
  
  parameters {
    password (name: 'AWS_ACCESS_KEY_ID')
    password (name: 'AWS_SECRET_ACCESS_KEY')
  }
  environment {
    TF_WORKSPACE = 'default' //Sets the Terraform Workspace
    TF_IN_AUTOMATION = 'true'
    //AWS_ACCESS_KEY_ID = "${params.AWS_ACCESS_KEY_ID}"
    //AWS_SECRET_ACCESS_KEY = "${params.AWS_SECRET_ACCESS_KEY}"
  }
  stages {
    stage('Terraform Init') {
      steps {
        withCredentials([[
        $class: 'AmazonWebServicesCredentialsBinding',
        credentialsId: "dsd-aw",
        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
        ]])
        sh "terraform init -input=false -verify-plugins=false"
      }
    }
    
    stage('Terraform Apply') {
      steps {
        sh "terraform apply -input=false -auto-approve"
      }
    }
  }
}
