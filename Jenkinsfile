node {
    def mavenHome = tool name: 'maven'

    stage('git checkout')
    {
      git credentialsId: 'a66323ae-653b-4c08-9edf-17d38b2b27e7', url: 'https://github.com/HemanthVarupula/maven-webapplication-project-kkfunda.git'
    }
    stage('Build') {
    sh "${mavenHome}/bin/mvn clean package"
}
stage('SonarQube  Report') {
   sh "${mavenHome}/bin/mvn sonar:sonar"
}
stage('Upload to Nexus') {
    sh "${mavenHome}/bin/mvn deploy"
}
stage('Deploy to Tomcat') {
    echo "Deploying WAR file using curl..."

    sh """
        curl -u hemanth:password \
        --upload-file /var/lib/jenkins/workspace/First_Pipeline/target/maven-web-application.war \
        "http://54.160.216.145:8080/manager/text/deploy?path=/maven-web-application&update=true"
    """
}

}
