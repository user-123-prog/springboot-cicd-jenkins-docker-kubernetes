├── k8s/                        # Kubernetes manifests
├── src/main/java/com/example/  # Spring Boot source code
├── target/                     # Maven build output
├── Dockerfile                  # Docker image definition
├── Jenkinsfile                 # CI/CD pipeline stages
└── pom.xml                     # Maven dependencies
docker build -t springboot-app .
docker run -p 8080:8080 springboot-app
kubectl apply -f k8s/
kubectl get pods
kubectl get svc
