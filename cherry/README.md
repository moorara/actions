# Cherry Action

GitHub Action for [Cherry](https://github.com/moorara/cherry).
Cherry is an opinionated tool for buidling Go applications and releasing GitHub repositories.

## Inputs

### `path`

The path to a project or repository.

### `github_token`

Cherry `release` command needs a GitHub _personal access token_ with `admin` access to the repo being released.

## Example Usages

```yaml
name: Main
on: push
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Cherry Build
        uses: moorara/actions/cherry@master
        with:
          args: build
```
