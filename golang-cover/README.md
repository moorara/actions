# Golang-Cover

GitHub Action for running [Go](https://golang.org) tests and generating coverage profile and report.

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Coverage" ]
}

action "Coverage" {
  uses = "moorara/actions/golang-cover@master"
}
```
