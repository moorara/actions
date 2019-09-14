# ShellCheck Action

GitHub Action for linting shell scripts and finding possible issues and errors.
This action uses [ShellCheck](https://github.com/koalaman/shellcheck).

## Inputs

### `path`

**Required** The path to a directory or file that contains shell scripts with `.sh` extension.

## Example Usages

```yaml
name: Main
on: push
jobs:
  lint-scripts:
    name: Lint Scripts
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: ShellCheck
        uses: moorara/actions/shellcheck
        with:
          path: './scripts'
```
