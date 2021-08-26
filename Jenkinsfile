//@Library('TestLibrary')_
pipeline {
agent any
stages{
	stage('checkout'){
		steps{
		    
			script{
			    deleteDir()
			    //emailfile.sendemail()
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/cherukurirohitha/simple-java-maven-app']]])
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
		}
	}
}
