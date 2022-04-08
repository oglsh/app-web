node {
    checkout scm
    def image;

    stage ('Build Docker Image') {
        image = docker.build("my-node-app:${env.BUILD_ID}")
    }

    stage ('Push Docker Image in Nexus') {
        docker.withRegistry('http://nexus:8123/repository/docker-images/', 'Nexus') {
           image.push()
        }
    }
}