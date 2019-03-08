# https://developer.github.com/actions/creating-workflows/workflow-configuration-options
# https://developer.github.com/actions/creating-github-actions/creating-a-docker-container
# https://developer.github.com/actions/creating-github-actions/accessing-the-runtime-environment


workflow "Main" {
  on = "push"
  resolves = [ "Shell Check", "Go Linting", "Docker Build" ]
}

action "Shell Check" {
  uses = "./shellcheck"
  args = [ "./shellcheck/test" ]
}

action "Go Linting" {
  uses = "./gometalinter"
  args = [ "./gometalinter/test" ]
}

action "Docker Build" {
  uses = "./docker"
  runs = [ "sh", "-c" ]
  args = [ "cd docker/test && make build" ]
}
