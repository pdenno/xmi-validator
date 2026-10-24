#!/bin/bash
# JavaScript XMI Validator - Unix/Linux CLI Runner
# Usage: ./run-validation.sh <path_to_xmi_file_or_url> [options]

if [ -z "$1" ]; then
    echo "Error: No XMI file or URL provided."
    echo "Usage: ./run-validation.sh <path_to_xmi_file_or_url> [options]"
    exit 1
fi

echo "Starting Stateless XMI Validator..."
echo "Target: $1"

npx tsx src/cli/index.ts "$@"

