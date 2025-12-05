# 🚀 Centre de Déploiement GitOps avec Rancher Fleet

## 📌 Description
Ce dépôt centralise tous les déploiements Docker de vos clients. 
Chaque dossier représente une application à déployer sur Kubernetes via Rancher Fleet.

## 🏗️ Structure
fleet-deployments/
├── client-a/ # Application du Client A
│ ├── fleet.yaml # Configuration Fleet
│ └── deployment.yaml # Déploiement Kubernetes
├── client-b/ # Application du Client B
│ ├── fleet.yaml
│ └── deployment.yaml
├── monitoring/ # Stack Monitoring (Prometheus + Grafana)
│ ├── fleet.yaml
│ └── deployment.yaml
