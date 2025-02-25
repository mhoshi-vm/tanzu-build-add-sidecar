FROM line/kubectl-kustomize

RUN apk add git

RUN mkdir /script
COPY docker-script.sh /script
RUN chmod 755 /script/docker-script.sh
USER 1000
WORKDIR /tmp
