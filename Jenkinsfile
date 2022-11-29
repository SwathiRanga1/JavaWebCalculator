pipeline{
    agent any
    
    stages{
        
        stage('build maven'){
            steps{
                sh 'echo in build stage'
            }
            
        }
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
    }
        
    
}
