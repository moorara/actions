# Go Cover Action

GitHub Action for running `go test` command, generating coverage reports, and sending them to third-party services.
The following services are currently supported:

  - [Codecov](https://codecov.io)
  - [Code Climate](https://codeclimate.com)

## Inputs

### `path`

The path of the directory containing `*.go` and `*_test.go` files.
The default path is `./...`.

### `codecov_token`

If set, coverage report will be sent to [Codecov](https://codecov.io) using this _token_.

### `codeclimate_reporter_id`

If set, coverage report will be sent to [Code Climate](https://codeclimate.com) using this _test reporter id_.

## Outputs

### `coverage_profile_file`

The path to coverage profile file.
This is a machine-readable file.

### `coverage_report_file`

The path to coverage report file.
This is a human-readable file.

## Example Usages

```yaml
name: Main
on: push
jobs:
  test-cover:
    name: Test Coverage
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Cover
        uses: moorara/actions/go-cover@main
```

```yaml
name: Main
on: push
jobs:
  test-cover:
    name: Test Coverage
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Cover
        uses: moorara/actions/go-cover@main
        with:
          codecov_token: ${{ secrets.CODECOV_TOKEN }}
```

```yaml
name: Main
on: push
jobs:
  test-cover:
    name: Test Coverage
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Cover
        uses: moorara/actions/go-cover@main
        with:
          codeclimate_reporter_id: ${{ secrets.CODECLIMATE_REPORTER_ID }}
```

```yaml
name: Main
on: push
jobs:
  test-cover:
    name: Test Coverage
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Go Cover
        id: cover
        uses: moorara/actions/go-cover@main
      - name: Upload Test Report
        uses: actions/upload-artifact@v2
        with:
          name: coverage-report
          path: {{ steps.cover.outputs.coverage_report_file }}
```
