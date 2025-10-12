node
{
  // /var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.6/bin
  //def mavenHome =tool name: "maven-3.9.6"

  stage("Git checkout")
  {
    git branch: 'development', url: 'https://github.com/sampletest1274/maven-webapplication-project-kkfunda.git'
  }
  stage("Maven Build")
  {
    sh "/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.6/bin/mvn clean package"
    // sh "${mavenHome}/bin/mvn clean package"
  }
  stage("Sonar Qube Report")
  {
    sh "/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.6/bin/mvn sonar:sonar"
  }
  stage("Deploy into nexus")
  {
    sh "/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.6/bin/mvn deploy"
  }
  stage("deploy Tomcat")
  {
    sh """

      curl -u kk:password \
      --upload-file /var/lib/jenkins/workspace/jio-dev-scriptedway-pl/target/maven-web-application.war \
      "http://3.111.38.190:8080/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
  }
  
}
