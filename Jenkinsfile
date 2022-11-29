pipeline{
    agent any
    
    stages{
        stage('calling docker file'){
            steps{
                script{
                    sh 'docker build -t swathiranga/javawebcalculator .'
                }
            }
        }
        stage('docker push'){
            steps{
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u swathiranga -p ${dockerhubpwd}'
                         sh 'docker push swathiranga/javawebcalculator'
               
                     }   
                   
                }
            }
        } 
        stage('create container'){
            steps {
          sh 'docker container run -dt --name jenkins -p 8000:80 swathiranga/javawebcalculator'    
            }
            }
        
    }
        
    
}
