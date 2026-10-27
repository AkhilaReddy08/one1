pipeline{
    agent { label "work"}
    tools{
        maven "mymaven"
    }
    stages{
        stage("GET CODE FROM GITHUB")
        {
            steps{
                git 'https://github.com/AkhilaReddy08/one1.git'
            }
        }
        stage("Build"){
            steps{
                sh "mvn clean install"
            }
        }
        stage("Sonarqube")
        {
            steps{
                withSonarQubeEnv('Akhila')
                {
                    withSonarQubeEnv('Akhila') {
                        sh '''
                              mvn clean verify\
                              org.sonarsource.scanner.maven:sonar-maven-plugin:sonar \
                             -Dsonar.projectKey=Sonar \
                             -Dsonar.projectName='Sonar' \
                             -Dsonar.host.url=http://16.176.26.57:9001 \
                             -Dsonar.token=sqp_ad30523e8e05b79fc27fef4d370e0a08f2499102
                           '''
                          }
                }
            }
        }
        stage("Deploy in Application Server")
        {
            steps{
              //deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'Tomcat', path: '', url: 'http://3.27.235.160:8080')], contextPath: 'APP', war: 'target/myweb.war'
              deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'Tomcat', path: '', url: 'http://32.236.85.47:8080')], contextPath: 'Application', war: 'target/myweb.war'
            }
        }
        stage("Artifact Nexus")
        {
            steps{
                nexusArtifactUploader artifacts: [[artifactId: 'myweb', classifier: '', file: 'target/myweb.war', type: 'war']], credentialsId: 'nexus', groupId: 'in.javahome', nexusUrl: '13.239.26.133:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'myrepo', version: '8.9.6'
            }
        }
    }
       post{
           always{
             
mail to: 'reddyakhila9888@gmail.com',
subject: "Build Status: ${currentBuild.fullDisplayName}",
body: " HI AKHILA YOU DID THE PIPELINE AUTOMATION PROCESS ON ALL STAGES. The build ${env.BUILD_NUMBER} finished with status: ${currentBuild.currentResult}. View logs at: ${env.BUILD_URL}"
       }
       }
    }
