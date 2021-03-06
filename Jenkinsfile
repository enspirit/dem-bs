pipeline {

  agent any

  triggers {
    issueCommentTrigger('.*test this please.*')
  }

  environment {
    VERSION = get_docker_tag()
    DOCKER_REGISTRY = 'q8s.quadrabee.com'
    SLACK_CHANNEL = 'opensource-cicd'
  }

  stages {

    stage ('Start') {
      steps {
        sendNotifications('STARTED', SLACK_CHANNEL)
      }
    }

    stage ('Building Docker Images') {
      steps {
        container('builder') {
          sh 'make image'
        }
      }
    }

    stage ('Running tests') {
      steps {
        container('builder') {
          sh 'make ci'
        }
      }
    }

    stage ('Pushing Docker Images') {
      when {
        anyOf {
          branch 'master'
          buildingTag()
        }
      }
      steps {
        container('builder') {
          script {
            docker.withRegistry('https://q8s.quadrabee.com', 'q8s-deploy-enspirit-be') {
              sh 'make push'
            }
          }
        }
      }
    }
  }

  post {
    success {
      sendNotifications('SUCCESS', SLACK_CHANNEL)
    }
    failure {
      sendNotifications('FAILED', SLACK_CHANNEL)
    }
  }
}

def get_docker_tag() {
  if (env.TAG_NAME != null) {
    return env.TAG_NAME
  }
  return 'latest'
}
