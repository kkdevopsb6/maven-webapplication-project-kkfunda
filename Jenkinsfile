pipeline{
    agent any
    tools
    {
        maven "maven-3.9.6"
    }
    stages
    {
        stage('gitcheckout'){
            steps
            {
                git branch:'development' , url:'https://github.com/Amuktha135/maven-webapplication-project-kkfunda.git'

            }
        }
        stage('Build'){
        steps{
            sh "mvn clean package"
    
        }
        }
        stage('sonar')
        {
            steps{
                sh "mvn sonar:sonar"
            }
        }
        stage('nexus')
        {
            steps{
               sh "mvn deploy"
            }
        }
        stage('tomcat')
        {
            steps{
                deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: '80c7406c-1b98-4fcb-b1d2-58fc4d1c7a15', path: '', url: 'http://54.146.251.86:8080/manager/html')], contextPath: null, war: '**/maven-web-application.war'
            }
        }
    }
}
