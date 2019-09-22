# Vault Action

GitHub Action for [HashiCorp](https://www.hashicorp.com) [Vault](https://vaultproject.io).

## Inputs

## Example Usages

```yaml
name: Main
on: push
jobs:
  vault:
    name: Vault
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Version
        uses: moorara/actions/vault@master
        with:
          args: version
```
