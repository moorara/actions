#!/usr/bin/env sh

set -eu  # -o pipefail


if [ $# -gt 0 ]; then
  golangci-lint "$@"
else
  golangci-lint run --new="$INPUT_NEW" --deadline="$INPUT_DEADLINE" "$INPUT_PATH"
fi
