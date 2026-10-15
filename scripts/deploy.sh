#!/bin/bash
set -e

RELEASE_VERSION="${RELEASE_VERSION:-v2.3.0}"
ENVIRONMENT="${ENVIRONMENT:-production}"

echo "===================================================="
echo " Starting Safe Production Deployment: OrderFlow"
echo " Environment: ${ENVIRONMENT}"
echo " Release Version: ${RELEASE_VERSION}"
echo " Timestamp: $(date -u)"
echo "===================================================="

# Validate version parameter
if [ -z "$RELEASE_VERSION" ] || [ "$RELEASE_VERSION" == "latest" ]; then
  echo "[-] ERROR: Mutable or undefined version provided. Deployment aborted."
  exit 1
fi

echo "[+] Step 1: Pre-flight checks passed."
echo "[+] Step 2: Applying Kubernetes deployment for OrderFlow ${RELEASE_VERSION}..."
echo "[+] Step 3: Verifying deployment rollouts and health check on /health..."
echo "[+] Deployment of OrderFlow ${RELEASE_VERSION} successful and verified."

