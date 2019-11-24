#!/bin/bash -l

set -eu -o pipefail


create_semver() {
  suffix=""

  # Pre-release version
  if [[ "$INPUT_PRERELEASE" =~ ^[0-9A-Za-z]+(\.[0-9A-Za-z]+)*$ ]]; then
    suffix+="-$INPUT_PRERELEASE"
  fi

  # Build metadata
  if [[ "$INPUT_METADATA" =~ ^[0-9A-Za-z]+(\.[0-9A-Za-z]+)*$ ]]; then
    suffix+="+$INPUT_METADATA"
  fi

  # Default pre-release version
  if [[ -z "$suffix" ]]; then
    suffix="-$(git rev-parse --short HEAD)"
    if [[ "$(git rev-parse --abbrev-ref HEAD)" != "master" ]]; then
      suffix+=".dev"
    fi
  fi

  semver=${semver/-0/$suffix}
}

update_text_file() {
  semver=$(cat "$INPUT_FILE")
  create_semver
  echo "$semver"
  echo "$semver" > "$INPUT_FILE"
}


update_text_file
