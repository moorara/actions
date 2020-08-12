FROM golang:1.15

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/master/go-cover"
LABEL "maintainer"="Milad Irannejad <>"

# Install Code Climate test-reporter
RUN wget -q -O /usr/local/bin/test-reporter https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 && \
    chmod 755 /usr/local/bin/test-reporter

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
