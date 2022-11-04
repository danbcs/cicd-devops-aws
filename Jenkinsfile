pipeline {
    agent any
    stages {
        stage ('Build Docker Image') {
            steps {
                script {
                    dockerapp = docker.build("danbcs/kube-news:${env.BUILD_ID}", '-f ./src/Dockerfile ./src')
                }
            }
        }
        stage ('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com","dockerhub") {
                        dockerapp.push('latest')
                        dockerapp.push("${env.BUILD_ID}")
                    }
                    
                }
            }
        }

        stage ('Deploy Kubernetes') {
            environment {
                tag_version = "${env.BUILD_ID}"
                terraform_cluster_name = credentials('jenkins-aws-cluster-name')
                AWS_DEFAULT_REGION = credentials('jenkins-aws-region')
                AWS_ACCESS_KEY_ID=credentials('aws-access-key-id')
                AWS_SECRET_ACCESS_KEY=credentials('aws-access-key-secret')
                
            }
            steps {
                sh 'aws eks --region $AWS_DEFAULT_REGION update-kubeconfig --name $terraform_cluster_name'
                sh 'sed -i "s/{{TAG}}/$tag_version/g" ./k8s/deployment.yaml'
                sh 'kubectl apply -f ./k8s/deployment.yaml'
            }
        }
    }
}