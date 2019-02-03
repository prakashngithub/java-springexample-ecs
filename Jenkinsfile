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
       stage('build')
       {
           steps
           {
              sh('mvn clean install')
           }
       }
       stage('build-docker')
        {
            steps
            {
                sh('docker build . -t app1:$BUILD_ID')
                             }
                             }
       stage('deploy')
       {
steps{
      

      sh 'cp target/*.war /home/janakiraman/apache/webapps/.' 
      sh 'mv /home/janakiraman/apache/webapps/app1*.war /home/janakiraman/backups/.'
}      
}

    
   stage('test_deploy')
   {
       steps{ 

           sh 'curl localhost:8081/app1'
          }

       }
  stage('deploy_docker')
        {
            steps
            {
                ansiblePlaybook extras: '--extra-vars "image_name=app1"  --extra-vars "image_tag=$BUILD_NUMBER"', installation: 'ansible', playbook: 'launch.yaml'
                
   }
        }
    }
   }
    
    
