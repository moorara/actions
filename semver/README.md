# Cherry Action

GitHub Action for resolving the semantic version for a repo and writing it to a file.
This action can be used for versioning other artifacts such as Docker images.

You can read more about semantic versioning [here](https://semver.org).

## Inputs

### `file`

The path to a text file for writing the semantic version to it.

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
        with:
          fetch-depth: 0
      - uses: moorara/actions/semver@master
```

```yaml
name: Main
on: push
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
        with:
          fetch-depth: 0
      - name: Semantic Versioning
        uses: moorara/actions/semver@master
        with:
          file: VERSION
```
