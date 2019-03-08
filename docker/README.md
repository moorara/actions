# Docker

GitHub Action for running Docker command in GitHub Actions.
You can *build* and *push* Docker images using this action.

## Usage

```hcl
workflow "Main" {
  on = "push"
  resolves = [ "Push" ]
}

action "Build" {
  uses = "moorara/actions/docker@master"
  runs = "make"
  args = "build"
}

action "Push" {
  needs = [ "Build" ]
  uses = "moorara/actions/docker@master"
  runs = "make"
  args = "push"
}
```
