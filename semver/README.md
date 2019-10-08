# SemVer Action

GitHub Action for writing semantic versions to the version file (`VERSION`) checked in to a repo.
You can read about the specification of semantic versioning [here](https://semver.org).

## Inputs

### `file`

The path to a text file containing a semantic version in `X.Y.Z-0` format.

### `prerelease`

A series of dot separated identifiers as a pre-release version as defined [here](https://semver.org/#spec-item-9).

### `metadata`

A series of dot separated identifiers as build metadata as defined [here](https://semver.org/#spec-item-10).

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
      - name: Write Semantic Version
        uses: moorara/actions/semver@master
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
      - name: Write Semantic Version
        uses: moorara/actions/semver@master
        with:
          file: VERSION
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
      - name: Write Semantic Version
        uses: moorara/actions/semver@master
        with:
          file: VERSION
          prerelease: rc.1
          metadata: "20191007220000"
```
