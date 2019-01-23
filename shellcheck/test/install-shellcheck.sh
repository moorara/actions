#!/usr/bin/env sh

#
# This script installs the latest version of ShellCheck
# https://github.com/koalaman/shellcheck
#
# USAGE:
#   ./install-shellcheck.sh
#   ./install-shellcheck.sh -v 0.6.0
#   ./install-shellcheck.sh --version 0.6.0
#

set -euo pipefail


process_args() {
  version="stable"

  while [ $# -gt 1 ]; do
    key=$1
    case $key in
      -v|--version)
      version=$2
      shift
      ;;
    esac
    shift
  done
}

install_shellcheck() {
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  arch=$(uname -m)

  wget -qO shellcheck.tar.xz "https://storage.googleapis.com/shellcheck/shellcheck-$version.$os.$arch.tar.xz"
  tar --xz -xvf shellcheck.tar.xz
  mv "shellcheck-$version/shellcheck" /usr/local/bin/
  rm -rf shellcheck.tar.xz "shellcheck-$version"
}


process_args "$@"
install_shellcheck
