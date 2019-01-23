workflow "Main" {
  on = "push"
  resolves = [ "Shell Check", "Go Meta Linter" ]
}

action "Shell Check" {
  uses = "./shellcheck"
  args = "./shellcheck/test/install-shellcheck.sh"
}

action "Go Meta Linter" {
  uses = "./gometalinter"
  args = [ "./gometalinter/test" ]
}
