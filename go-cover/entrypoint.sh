#!/usr/bin/env bash

set -euo pipefail

# Run if codeclimate_reporter_id input is set
[ -n "$INPUT_CODECLIMATE_REPORTER_ID" ] && test-reporter before-build

# Run go test command ...
go test -race -cover -covermode=atomic -coverprofile=c.out "$*"
exit_code=$?

# Run if codeclimate_reporter_id input is set
[ -n "$INPUT_CODECLIMATE_REPORTER_ID" ] && test-reporter after-build --id "$INPUT_CODECLIMATE_REPORTER_ID" --exit-code $exit_code --prefix "$(go list -m)"

# Run if codecov_token input is set
[ -n "$INPUT_CODECOV_TOKEN" ] && bash <(curl -s https://codecov.io/bash) -f c.out -t "$INPUT_CODECOV_TOKEN"

# Generate HTML coverage report
go tool cover -html=c.out -o cover.html
