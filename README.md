#  Spring Boot CI/CD with Jenkins, Docker & Kubernetes
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Maven](https://img.shields.io/badge/Maven-Build-green)
![Spring Boot](https://img.shields.io/badge/SpringBoot-Java-brightgreen)



A production-style CI/CD pipeline for a Spring Boot application using Jenkins, Docker, and Kubernetes.

##  Project Overview
This project demonstrates end-to-end DevOps automation — from code commit to deployment — using industry-standard tools.

##  Tech Stack
| Layer | Tool |
|---|---|
| Application | Spring Boot (Java) |
| Build | Maven |
| CI/CD | Jenkins |
| Containerization | Docker |
| Orchestration | Kubernetes (k8s) |
| Version Control | GitHub |

##  Project Structure
- k8s/ — Kubernetes manifests
- src/main/java/com/example/ — Spring Boot source code
- Dockerfile — Docker image definition
- Jenkinsfile — CI/CD pipeline stages
- pom.xml — Maven dependencies

##  Pipeline Stages
1. Clone code from GitHub
2. Build with Maven
3. Docker Build & Push
4. Deploy to Kubernetes

   ## 📸 Screenshots

### Jenkins Pipeline - Stage View


![Jenkins Pipeline](jenkins%20pipeline.jpeg)



### Deployed Application


![Deployed App](deployed%20application.jpeg)

##  Run with Docker
docker build -t springboot-app .
docker run -p 8080:8080 springboot-app

##  Deploy to Kubernetes
kubectl apply -f k8s/
kubectl get pods
kubectl get svc

##  Author
Sushmitha P N — DevOps Engineer
