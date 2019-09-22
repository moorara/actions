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
      - uses: actions/checkout@master
      - name: Validate
        uses: moorara/actions/terraform@master
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
      - uses: actions/checkout@master
      - name: Validate
        uses: moorara/actions/terraform@master
        with:
          path: ./project
          args: validate
```
