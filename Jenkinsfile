pipeline {
	agent any
	/*triggers {cron('* * * * *')}
	 options {timeout (time: 30)}*/
	stages{
		stage("Checkout"){
			steps{
				git url: 'https://github.com/montrellss/SimplilearnProject.git' , branch: 'main'
			}
		}
		stage("Run"){
			steps{
				sh 'java SimpliHello'
			}
		}
		stage("Compiling"){
			steps{
				sh 'mvn compiler:compile'
			}
		}
		stage("DockerBuildImage"){
				sh 'docker build -t javaapp .'
		}	
	}

}
