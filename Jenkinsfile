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
		stage("Compile"){
			steps{
				echo "Compiling Code"
			}
		}	
	}

}
