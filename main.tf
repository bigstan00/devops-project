terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.5.0"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.28.2"
}

resource "minikube_cluster" "minikube_docker" {
  driver        = "docker"
  cluster_name  = "devops-project"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}

