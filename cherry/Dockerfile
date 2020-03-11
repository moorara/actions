FROM golang:1.14-alpine

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/master/cherry"
LABEL "maintainer"="Milad Irannejad <>"

# Install dependencies
RUN apk add --no-cache ca-certificates make git ruby ruby-json && \
    gem install rdoc --no-document && \
    gem install github_changelog_generator

# Install Cherry
RUN wget -qO - https://git.io/JeCX6 | sh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
