pipeline {
	agent any
	/*triggers {cron('* * * * *')}
	 options {timeout (time: 30)}*/
	environment{
		IMAGE_TAG = 'v1.0'
	}

	stages{
		stage("Checkout"){
			steps{
				git url: 'https://github.com/montrellss/SimplilearnProject.git' , branch: 'main'
			}
		}
		stage("Build"){
			steps{
				//Execute build steps (Maven build)
				sh 'mvn clean package'
			}
		}
		stage("Test"){
			steps{
				//Execute testing steps
				sh 'mvn test'
			}
		}
		stage('Build Image'){
			steps{
				script{
					sh 'docker build -t simplilearnproject .'
				}
			}

		}
		stage("Deploy"){
			steps{
				script{
					def registryUrl = 'https://registry.hub.docker.com'
					def credentialsId = 'montrellssdockerhub'
					def dockerImage = "user/SimpliLearn:${IMAGE_TAG}"
			
					docker.withRegistry(registryUrl, credentialsId){
						docker.image(dockerImage).push()
					}
				}
			}
		}	
	}

}
