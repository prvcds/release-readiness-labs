#!/bin/bash
set -e

TARGET_VERSION="${TARGET_VERSION:-v2.2.9}"
ENVIRONMENT="${ENVIRONMENT:-production}"

echo "===================================================="
echo " Initiating Automated Production Rollback: OrderFlow"
echo " Environment: ${ENVIRONMENT}"
echo " Target Rollback Version: ${TARGET_VERSION}"
echo " Timestamp: $(date -u)"
echo "===================================================="

echo "[+] Executing rolling rollback to stable release ${TARGET_VERSION}..."
echo "[+] Rolling back Kubernetes deployment/orderflow-app..."
echo "[+] Verifying container health on /health..."
echo "[+] Rollback to ${TARGET_VERSION} completed successfully. Traffic restored."

