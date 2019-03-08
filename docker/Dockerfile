FROM github/docker-tag:1

LABEL "com.github.actions.name"="Docker"
LABEL "com.github.actions.description"="Executing Docker commands in GitHub actions"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/moorara/actions"
LABEL "homepage"="http://github.com/moorara/actions"
LABEL "maintainer"="Milad Irannejad <>"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
      make git jq && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/make" ]
CMD [ "build" ]
