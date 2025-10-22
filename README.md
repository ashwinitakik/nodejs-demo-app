# Node.js CI/CD Demo App

A simple Node.js Express application demonstrating a full CI/CD pipeline using GitHub Actions, Docker, DockerHub, and AWS EC2 deployment. This project automates testing, building, pushing Docker images, and deploying to a live server on every push to the `main` branch.

## Project Overview
- **App**: A basic HTTP server that responds with "Hello from Node.js CI/CD Demo App! Deployed via GitHub Actions to EC2." on port 3000.
- **Structure**:
  - `app/`: Contains `app.js` (Express server), `package.json` (dependencies: Express), and `package-lock.json`.
  - Root: `Dockerfile` (builds the app), `.gitignore` (ignores node_modules), `.github/workflows/main.yml` (CI/CD pipeline).
- **Technologies**:
  - Node.js 18 (Express framework).
  - Docker (containerization).
  - GitHub Actions (CI/CD orchestration).
  - DockerHub (image registry: vaivii08/nodejs-demo-app).
  - AWS EC2 (deployment server: t3.micro instance at 3.110.27.251).
- **Goal**: Automate the workflow: Code push → Test → Build Docker image → Push to DockerHub → Deploy to EC2 (accessible via browser).

Repo: [https://github.com/vaishnavi-shingare08/nodejs-demo-app](https://github.com/vaishnavi-shingare08/nodejs-demo-app)

## Prerequisites
- Git installed.
- Node.js 18+ (for local testing).
- Docker installed (for local builds).
- AWS EC2 instance (Amazon Linux 2023, t3.micro, with Docker).
- GitHub Personal Access Token (PAT) for pushes.
- DockerHub account (username: vaivii08).
- SSH key (PEM file: 925-open.pem) for EC2 access.

## Local Setup and Testing
1. **Clone the Repo**:
   ```bash
   git clone https://github.com/vaishnavi-shingare08/nodejs-demo-app.git
   cd nodejs-demo-app
