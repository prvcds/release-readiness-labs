# OrderFlow

This repository contains the Release Readiness Investigation & Deployment Approval Lab.

## Application

A simple Node.js Express application.

### Endpoints
- `GET /`
- `GET /health`

## Current Release
- **Application**: OrderFlow
- **Version**: `v2.3.0`
- **Environment**: Production
- **Release Status**: Ready for Production Deployment

## Release Readiness Documentation
Detailed operational documentation and release packages are maintained in:
- [RELEASE_PACK.md](RELEASE_PACK.md): Complete Operational Release Pack
- `release/deployment-config.yml`: Production Deployment Configuration
- `release/approvals.yml`: Production Approval & Sign-off Checklist
- `release/rollback.yml`: Rollback Strategy & Incident Runbook
- `release/release-summary.yml`: Release Readiness State Summary

## Deployment & Rollback Runbooks
- **Deployment Script**: `scripts/deploy.sh`
- **Rollback Script**: `scripts/rollback.sh`
- **Infrastructure Target**: Kubernetes (AWS EKS) multi-replica deployment (`deployment/kubernetes/deployment.yaml`)

## Getting Started

### Clone
```bash
git clone https://github.com/kalviumcommunity/release-readiness-labs.git
cd release-readiness-lab
```

### Install
```bash
cd app
npm install
```

### Run
```bash
npm start
```
Alternatively, use Docker Compose:
```bash
docker-compose up --build
```

### Push
Make your changes and push them back to the repository on your working branch.

## Repository Structure
```
├── .github/
│   └── workflows/
│       └── release.yml
├── app/
│   ├── server.js
│   └── package.json
├── deployment/
│   ├── kubernetes/
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   └── terraform/
│       ├── main.tf
│       └── variables.tf
├── release/
│   ├── approvals.yml
│   ├── deployment-config.yml
│   ├── release-summary.yml
│   ├── release.json
│   └── rollback.yml
├── scripts/
│   ├── deploy.sh
│   └── rollback.sh
├── Dockerfile
├── docker-compose.yml
├── RELEASE_PACK.md
└── README.md
```

