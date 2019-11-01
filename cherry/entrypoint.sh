#!/bin/sh

set -eu  # -o pipefail


# Changing working directory to input path
cd "$INPUT_PATH"

# Run Cherry
export CHERRY_GITHUB_TOKEN="$INPUT_GITHUB_TOKEN"
cherry "$@"
