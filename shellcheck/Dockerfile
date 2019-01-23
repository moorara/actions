FROM alpine:3.8

LABEL "com.github.actions.name"="ShellCheck"
LABEL "com.github.actions.description"="Gives warnings and suggestions for bash/sh shell scripts"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/moorara/actions"
LABEL "homepage"="http://github.com/moorara/actions"
LABEL "maintainer"="Milad Irannejad <>"

# Install shellcheck (https://github.com/koalaman/shellcheck)
RUN wget -q -O shellcheck.tar.xz https://storage.googleapis.com/shellcheck/shellcheck-stable.linux.x86_64.tar.xz && \
    tar --xz -xvf shellcheck.tar.xz && \
    mv shellcheck-stable/shellcheck /usr/local/bin/ && \
    shellcheck --version

ENTRYPOINT [ "shellcheck" ]
CMD [ "**/*.{sh,bash}" ]
