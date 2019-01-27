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
      sh 'cp /home/janakiraman/apache/webapps/app1.war /home/janakiraman/backups/app1.war'
      sh 'cp target/*.war /home/janakiraman/apache/webapps/.' 
}

       }
   stage('test_deploy')
   {
       steps{
           sh 'result=curl -s -o /dev/null -w %{http_code} localhost:8081/app1'
           script{
                       if (env.result==200)
                       {
                           echo 'deployment successful'
                       }
                       else
                       {
                           echo 'deployment failure'
                           exit -1
                       }
           }

       }
   }
    }
}    