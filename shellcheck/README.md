# Shell Check

GitHub Action for linting shell scripts and finding possible issues and errors.
This action uses [ShellCheck](https://github.com/koalaman/shellcheck).

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Shell Linting" ]
}

action "Shell Linting" {
  uses = "moorara/actions/shellcheck@master"
  args = [ "path/to/dir", "path/to/script.sh" ]
}
```

The entrypoint for this action is `shellcheck` command.
For arguments, you can pass a list of files, directories, or both.
