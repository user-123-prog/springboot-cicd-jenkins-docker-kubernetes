#  Spring Boot CI/CD with Jenkins, Docker & Kubernetes
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Maven](https://img.shields.io/badge/Maven-Build-green)
![Spring Boot](https://img.shields.io/badge/SpringBoot-Java-brightgreen)



A production-style CI/CD pipeline for a Spring Boot application using Jenkins, Docker, Kubernetes, Maven, AWS and Spring boot

##  Project Overview
This project demonstrates end-to-end DevOps automation — from code commit to deployment — using industry-standard tools.
## ✅ Prerequisites

| Tool | Version | Purpose |
|------|---------|---------|
| Java (JDK) | 17 | Run Spring Boot app (openjdk:17) |
| Maven | 3.8+ | Build & package (mvn clean package) |
| Spring Boot | 3.2.5 | Application framework |
| Docker | Latest | Build & push container image |
| Jenkins | LTS | CI/CD pipeline automation |
| kubectl | Latest | Deploy to Kubernetes |
| AWS EC2 | - | Host Jenkins & Kubernetes |
| DockerHub Account | - | Store springboot-app:latest image |
| GitHub Account | - | Source code repository |

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

## Pipeline Stages

1. **Clone code from GitHub** → Jenkins pulls code from `main` branch
2. **Build with Maven** → `mvn clean package -DskipTests` creates JAR file
3. **Docker Build & Push** → Builds `springboot-app:latest` image, pushes to DockerHub
4. **Deploy to Kubernetes** → `kubectl apply -f k8s/` deploys to AWS EC2 cluster

## 🚧 Challenges Faced

| Challenge | How I Solved It |
|-----------|----------------|
| Jenkins couldn't find Maven | Configured Maven3 manually under Manage Jenkins → Tools → Maven installations |
| Docker build failing | Changed base image from OpenJDK 21 to 17 to match project compatibility |
| Kubernetes pod not starting | Fixed imagePullPolicy: Never to use local Docker image |
| Jenkins pipeline Git checkout failing | Corrected GitHub repo URL and branch name to 'main' in Jenkinsfile |
| JAR file not found during Docker build | Fixed COPY path to target/demo-1.0.jar app.jar in Dockerfile |
| DockerHub credentials in Jenkins | Used Jenkins Credentials Manager to securely store DockerHub username & password |
| Kubernetes pod CrashLoopBackOff | Debugged using kubectl logs and kubectl describe pod to find root cause |
| AWS EC2 app not accessible | Configured inbound security group rules to allow port 8080 traffic |

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
