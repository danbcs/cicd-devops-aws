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
                terraform_region = credentials('jenkins-aws-region')
                terraform_cluster_name = credentials('jenkins-aws-cluster-name')
            }
            steps {
                withKubeConfig(credentialsId: 'kubeconfig') {
                    sh 'aws eks --region $terraform_region update-kubeconfig --name $terraform_cluster_name'
                    sh 'kubectl apply -f ./k8s/deployment.yaml'
                }
            }
        }
    }
}