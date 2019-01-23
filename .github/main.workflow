workflow "Main" {
  on = "push"
  resolves = [ "Shell Check", "Go Meta Linter" ]
}

action "Shell Check" {
  uses = "./shellcheck"
}

action "Go Meta Linter" {
  uses = "./gometalinter"
}
