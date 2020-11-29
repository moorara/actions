# Packer Action

GitHub Action for [HashiCorp](https://www.hashicorp.com) [Packer](https://packer.io).

## Inputs

## Example Usages

```yaml
name: Main
on: push
jobs:
  packer:
    name: Packer
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate
        uses: moorara/actions/packer@main
        with:
          args: validate -syntax-only ./packer/test/ubuntu.json
```
