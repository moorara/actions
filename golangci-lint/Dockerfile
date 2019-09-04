FROM golang:1.13-alpine

LABEL "com.github.actions.name"="GolangCI-Lint"
LABEL "com.github.actions.description"="Statically checking Go codes for errors, warnings, and linting issues"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/moorara/actions"
LABEL "homepage"="http://github.com/moorara/actions"
LABEL "maintainer"="Milad Irannejad <>"

# Install golangci-lint (https://github.com/golangci/golangci-lint)
RUN wget -qO - https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s latest

ENTRYPOINT [ "golangci-lint" ]
CMD [ "run" ]
