# Terraform Action

GitHub Action for [HashiCorp](https://www.hashicorp.com) [Terraform](https://www.terraform.io).

## Inputs

### `path`

The path to the Terraform project.

## Example Usages

```yaml
name: Main
on: push
jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate
        uses: moorara/actions/terraform@main
        with:
          args: validate
```

```yaml
name: Main
on: push
jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate
        uses: moorara/actions/terraform@main
        with:
          path: ./project
          args: validate
```
