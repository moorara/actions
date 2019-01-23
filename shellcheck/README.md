# Shell Check

GitHub Action for linting shell scripts and finding possible issues and errors.
This action uses [shellcheck](https://github.com/koalaman/shellcheck).

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Shell Check" ]
}

action "Shell Check" {
  uses = "./shellcheck"
}
```

The default argument for `shellcheck` command is `**/*.{sh,bash}` which checks all the shell scripts in your repository.
If you want to pass different arguments, use `args = [ "..." ]` in action body.