pipeline {
	agent any
	triggers {cron('* * * * *')}
	options {timeout (time: 5)}
	stages{
		stage("Checkout"){
			steps{
				git url: https://github.com/montrellss/SimplilearnProject.git, branch: 'main'
			}
		}	
	}

}
