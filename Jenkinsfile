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
                sh('docker build . -t $BUILD_ID')
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
   }
   }
    
    
