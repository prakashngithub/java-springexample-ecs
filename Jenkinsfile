pipeline {
    agent any
    
    stages {
         stage('checkout')
             {
                 steps
                 {
                 checkout scm
                 }
}
      
        stage('build-docker')
        {
            steps
            {
                sh('sudo docker build . -t app1:$BUILD_ID')
                             }
                             }
      

    
   
  stage('deploy_docker')
        {
            steps
            {
                ansiblePlaybook extras: '--extra-vars "image_name=app1"  --extra-vars "image_tag=$BUILD_NUMBER"', installation: 'ansible', playbook: 'launch.yaml'
                
   }
        }
 stage('smoke-test')
        {
            steps
            {
                curl localhost:9090/app1
            }
        }
    }
   }
    
    
