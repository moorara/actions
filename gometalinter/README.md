# Go Meta Linter

GitHub Action for linting [Go](https://golang.org) source codes and finding possible issues and errors.
This action uses [gometalinter](https://github.com/alecthomas/gometalinter).

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Go Meta Linter" ]
}

action "Go Meta Linter" {
  uses = "./gometalinter"
}
```

The default argument for `gometalinter` command is `./...` which checks all the packages in your repository.
If you want to pass different arguments, use `args = [ "..." ]` in action body.