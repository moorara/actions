FROM golang:1.12-alpine

LABEL "com.github.actions.name"="Golang-Cover"
LABEL "com.github.actions.description"="Running tests and generating coverage profile"
LABEL "com.github.actions.icon"="umberella"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/moorara/goto"
LABEL "homepage"="http://github.com/moorara/goto"
LABEL "maintainer"="Milad Irannejad <>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "./..." ]
