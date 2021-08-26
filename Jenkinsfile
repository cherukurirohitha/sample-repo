//@Library('TestLibrary')_
pipeline {
agent any
stages{
	stage('checkout'){
		steps{
		    
			script{
			    deleteDir()
			    //emailfile.sendemail()
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/cherukurirohitha/maven-hello-world']]])
			}
		}
	}
	
	stage('build'){
		steps{
		    script{
		     def mvnhome = tool 'M3'
           
              sh "cd my-app && '${mvnhome}/bin/mvn' clean install"
            }  
		    
			
		    }
		}
	}
}
