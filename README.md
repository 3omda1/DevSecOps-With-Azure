# DevSecOps-With-Azure

## Overview
This project demonstrates the containerization,IaC provisioning ,CI/CD automation, and Kubernetes deployment of a Spring Boot application using **Azure DevOps**.

## Architecture
- **Docker**: Containerized Spring Boot app.
- **Azure DevOps**: CI/CD pipeline with stages for linting, testing, code analysis, image build, push, and deployment.
- **Terraform**: Provision a secure EKS Cluster. 
- **Kubernetes**: Deploys the application in a cluster with a Service and Ingress.
- **SonarQube**: Code quality analysis.
- **OWASP ZAP**: To handel the DAST (Dynamic Application Security Testing).


## Setup Instructions

### 1. Repository Setup
1. Clone the repository 
   ```sh
   git clone https://github.com/3omda1/DevSecOps-With-Azure.git
   cd DevSecOps-With-Azure
   ```

### 2. Dockerization
1. Build and run locally:
   ```sh
   docker build -t spring-boot-app .
   docker run -p 8080:8080 spring-boot-app
   ```

### 3. CI/CD Pipeline
- Configured in `azure-pipelines.yml`
- Steps:
  1. Lint
  2. Unit Tests
  3. SonarQube Scan
  4. Docker Build & Push
  5. Deploy to Kubernetes 

### 4. Kubernetes Deployment
1. Apply the Kubernetes manifests:
   ```sh
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/ingress.yaml
   ```
2. Check application status:
   ```sh
   kubectl get pods -n development
   kubectl get ingress -n development
   ```


## Contact
For issues, reach out via email or submit a GitHub issue.

