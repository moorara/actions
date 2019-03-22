# https://developer.github.com/actions/creating-workflows/workflow-configuration-options
# https://developer.github.com/actions/creating-github-actions/creating-a-docker-container
# https://developer.github.com/actions/creating-github-actions/accessing-the-runtime-environment


workflow "Main" {
  on = "push"
  resolves = [ "Docker Build", "Go Linting", "Shell Linting" ]
}

action "Docker Build" {
  uses = "./docker"
  runs = [ "sh", "-c" ]
  args = [ "cd docker/test && make build" ]
}

action "Go Linting" {
  uses = "./golangci-lint"
  args = [ "run", "./golangci-lint/test" ]
}

action "Shell Linting" {
  uses = "./shellcheck"
  args = [ "./shellcheck/test" ]
}
