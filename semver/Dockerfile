FROM alpine:3.13

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/main/semver"
LABEL "maintainer"="Milad Irannejad <>"

# Install dependencies
RUN apk add --no-cache git

# Install Cherry
RUN wget -qO - https://git.io/JeCX6 | sh

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
