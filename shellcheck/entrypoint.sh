#!/bin/sh -l

set -euo pipefail


shellcheck_on_file() {
  file=$1
  shellcheck "$file"
}

shellcheck_on_dir() {
  dir=$1
  find "$dir" -name "*.sh" | xargs shellcheck
  # find "$dir" -name "*.bash" | xargs shellcheck
}

process_args() {
  for arg in "$@"; do
    if [ -f $arg ]; then
      shellcheck_on_file $arg
    elif [ -d $arg ]; then
      shellcheck_on_dir $arg
    else
      echo "$arg is neither a file nor a directory."
      exit 1
    fi
  done
}


process_args "$@"
