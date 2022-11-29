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
                    sh 'docker build -t swathiranga1/javawebcalculator .'
                }
            }
        }
    }
        
    
}
