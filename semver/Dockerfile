FROM alpine:3.12

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/master/semver"
LABEL "maintainer"="Milad Irannejad <>"

RUN apk add --no-cache bash git jq

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
