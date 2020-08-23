#!/bin/sh -l

set -eu


# Writing the semantic version resolved by Cherry to the input file
semver=$(cherry semver)
echo "$semver" > "$INPUT_FILE"
echo "::set-output name=version::$semver"
