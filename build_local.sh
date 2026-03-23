#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

IMAGE_NAME="${IMAGE_NAME:-truthdb-installer-kernel-builder:local}"
PLATFORM="${PLATFORM:-linux/amd64}"

docker build \
  --platform "${PLATFORM}" \
  -t "${IMAGE_NAME}" \
  -f "${SCRIPT_DIR}/docker/Dockerfile" \
  "${SCRIPT_DIR}"

echo "Builder image ready: ${IMAGE_NAME}"
