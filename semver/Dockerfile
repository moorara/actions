FROM alpine:3.10

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/master/semver"
LABEL "maintainer"="Milad Irannejad <>"

RUN apk add --no-cache bash git

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
