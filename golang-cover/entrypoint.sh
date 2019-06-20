#!/usr/bin/env sh

set -euo pipefail

go test -cover -covermode=atomic -coverprofile=c.out "$*"
go tool cover -html=c.out -o cover.html
