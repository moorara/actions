#!/bin/sh -l

set -eu  # -o pipefail


cd "$INPUT_PATH"

terraform init
terraform "$@"
