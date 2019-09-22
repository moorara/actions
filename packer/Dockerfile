# STAGE 1: Build
FROM alpine:3.10 AS builder

LABEL "repository"="https://github.com/moorara/actions"
LABEL "homepage"="https://github.com/moorara/actions/tree/master/packer"
LABEL "maintainer"="Milad Irannejad <>"

ENV os=linux
ENV arch=amd64
ENV project=packer

COPY hashicorp.asc .
RUN apk add --no-cache ca-certificates gnupg unzip && \
    regex='[0-9]{1,2}\.[0-9]{1,2}\.[0-9]{1,2}' && \
    version=$(wget -qO - "https://releases.hashicorp.com/${project}/" | grep -oE "${project}_${regex}</a>" | grep -oE "$regex" | head -n 1) && \
    wget -q "https://releases.hashicorp.com/${project}/${version}/${project}_${version}_SHA256SUMS" && \
    wget -q "https://releases.hashicorp.com/${project}/${version}/${project}_${version}_SHA256SUMS.sig" && \
    wget -q "https://releases.hashicorp.com/${project}/${version}/${project}_${version}_${os}_${arch}.zip" && \
    gpg --import hashicorp.asc && \
    gpg --verify "${project}_${version}_SHA256SUMS.sig" "${project}_${version}_SHA256SUMS" && \
    sed -i "/${project}_${version}_${os}_${arch}.zip$/!d" "${project}_${version}_SHA256SUMS" && \
    sha256sum -c "${project}_${version}_SHA256SUMS" | grep "${project}_${version}_${os}_${arch}.zip: OK" && \
    unzip "${project}_${version}_${os}_${arch}.zip" -d /usr/local/bin/ && \
    chmod 755 "/usr/local/bin/${project}" && \
    rm "${project}_${version}_SHA256SUMS" "${project}_${version}_SHA256SUMS.sig" "${project}_${version}_${os}_${arch}.zip"

# STAGE 2: Final
FROM alpine:3.10
COPY --from=builder /usr/local/bin/packer /usr/local/bin/
ENTRYPOINT [ "packer" ]
