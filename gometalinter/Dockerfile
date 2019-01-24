FROM golang:alpine

LABEL "com.github.actions.name"="Go Meta Linter"
LABEL "com.github.actions.description"="Statically checking Go codes for errors, warnings, and linting issues"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/moorara/actions"
LABEL "homepage"="http://github.com/moorara/actions"
LABEL "maintainer"="Milad Irannejad <>"

# Install gometalinter (https://github.com/alecthomas/gometalinter)
RUN wget -qO - https://git.io/vp6lP | sh

# This is a hack to get gometalinter working
ENV USER=root

ENTRYPOINT [ "gometalinter" ]
CMD [ "./..." ]
