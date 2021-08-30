//@Library('TestLibrary')_
pipeline {
agent any
stages{
	/*stage('checkout'){
		steps{
		    
			script{
			    deleteDir()
			    //emailfile.sendemail()
				checkout([$class: 'GitSCM', branches: [[name: 'master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/cherukurirohitha/simple-java-maven-app']]])
			}
		}
	}
	
	stage('build'){
		steps{
		    script{
		     def mvnhome = tool 'M3'
           
              sh "'${mvnhome}/bin/mvn' clean install"
            }  
		    
			
		}
	}*/
	stage('Dockerfile checkout'){
		steps{
		    
			script{

				checkout([$class: 'GitSCM', branches: [[name: 'master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/cherukurirohitha/sample-repo']]])
			}
		}
	}
	stage('Build Dockerfile'){
		steps{
		    
			script{

				sh """
				docker build . -t jenkins-tomcat
				docker run -d --name tomcatapp -p 8889:8080 jenkins-tomcat
				"""
				
				
			}
		}
	}
	}
}
