FROM alpine:3.8

LABEL "com.github.actions.name"="Shell Check"
LABEL "com.github.actions.description"="Gives warnings and suggestions for bash/sh shell scripts"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/moorara/actions"
LABEL "homepage"="http://github.com/moorara/actions"
LABEL "maintainer"="Milad Irannejad <>"

# Install shellcheck (https://github.com/koalaman/shellcheck)
RUN wget -q -O shellcheck.tar.xz https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz && \
    tar --strip-components=1 -C /usr/local/bin/ --xz -xvf shellcheck.tar.xz shellcheck-stable/shellcheck && \
    rm -rf shellcheck.tar.xz && \
    shellcheck --version

ENTRYPOINT [ "shellcheck" ]
