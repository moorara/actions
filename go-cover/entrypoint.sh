#!/usr/bin/env bash

set -euo pipefail


# Changing working directory to input path
cd "$INPUT_PATH"

# These two environment variables are read by Code Climate test reporter
# See https://docs.codeclimate.com/docs/test-coverage-troubleshooting-branch-names
# String operators: # deletes the shortest possible match from the left
# See https://www.linuxjournal.com/article/8919
export GIT_COMMIT_SHA="$GITHUB_SHA"
export GIT_BRANCH="${GITHUB_REF#refs/heads/}"

# Run if codeclimate_reporter_id input is set
[ -n "$INPUT_CODECLIMATE_REPORTER_ID" ] && test-reporter before-build

# Run go test command ...
go test -race -cover -covermode=atomic -coverprofile=c.out ./...
exit_code=$?

# Run if codeclimate_reporter_id input is set
[ -n "$INPUT_CODECLIMATE_REPORTER_ID" ] && test-reporter after-build --id "$INPUT_CODECLIMATE_REPORTER_ID" --exit-code $exit_code --prefix "$(go list -m)"

# Run if codecov_token input is set
[ -n "$INPUT_CODECOV_TOKEN" ] && bash <(curl -s https://codecov.io/bash) -f c.out -t "$INPUT_CODECOV_TOKEN"

# Generate HTML coverage report
go tool cover -html=c.out -o coverage.html

# Set action output parameters
echo "::set-output name=coverage_profile_file::c.out"
echo "::set-output name=coverage_report_file::coverage.html"
