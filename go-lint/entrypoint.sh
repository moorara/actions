#!/bin/sh

set -eu  # -o pipefail


# Changing working directory to input path
cd "$INPUT_PATH"

# Run linters
golangci-lint run \
  --new="$INPUT_NEW" \
  --deadline="$INPUT_DEADLINE" \
  ./...
