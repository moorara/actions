workflow "Main" {
  on = "push"
  resolves = [ "ShellCheck" ]
}

action "ShellCheck" {
  uses = "./shellcheck"
}
