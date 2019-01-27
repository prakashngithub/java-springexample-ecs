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
       stage('deploy')
       {
steps{
      

      sh 'cp target/*.war /home/janakiraman/apache/webapps/.' 
}      
}

       }
   stage('test_deploy')
   {
       steps{
          }

       }
   }
    }
    