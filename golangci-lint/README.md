# GolangCI-Lint

GitHub Action for linting [Go](https://golang.org) source codes and finding possible issues and errors.
This action uses [golangci-lint](https://github.com/golangci/golangci-lint).

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Go Linting" ]
}

action "Go Linting" {
  uses = "moorara/actions/golangci-lint@master"
}
```

The default argument for `golangci-lint` command is `run` which checks all the packages in your repository.
If you want to pass different arguments, use `args = [ "..." ]` in action body.
