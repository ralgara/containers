FROM alpine:3.10

MAINTAINER Rafael Algara <ralgara@gmail.com>

ARG K8S_VERSION
ARG HELM_VERSION
ENV HELM_FILENAME=helm-v${HELM_VERSION}-linux-amd64.tar.gz


RUN apk add --update ca-certificates \
 && apk add --update -t deps \
 && apk add --update curl gettext tar gzip \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && curl -L https://storage.googleapis.com/kubernetes-helm/${HELM_FILENAME} | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

CMD ["sh"]
