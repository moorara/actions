FROM golang:1.15

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/main/go-lint"
LABEL "maintainer"="Milad Irannejad <>"

# Install golangci-lint (https://github.com/golangci/golangci-lint)
RUN wget -qO - https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s latest

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
