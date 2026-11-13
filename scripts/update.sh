#!/bin/bash
# Rinux update script
# Pulls the latest changes from GitHub and applies them.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

echo "=== Rinux Update ==="
echo "Repository: $REPO_DIR"

# Pull latest changes
echo "Pulling latest changes from origin..."
git pull --ff-only || {
    echo "Failed to pull. Resolve any conflicts and try again."
    exit 1
}

echo "Changes pulled successfully."

# TODO: Add logic here to:
# - Detect changed packages/configs
# - Rebuild affected components
# - Rebuild kernel if needed
# - Update system configuration files

echo "Update complete. Review the changes and rebuild as needed."
echo "See docs/ for more information."
