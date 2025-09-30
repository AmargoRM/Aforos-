#!/usr/bin/env bash
set -euo pipefail

# Resolve repository root relative to this script
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

# Ensure the Gradle wrapper is executable
chmod +x gradlew

# Run the standard build and lint tasks used in CI
./gradlew --stacktrace \
  clean \
  lint \
  test \
  assemble
