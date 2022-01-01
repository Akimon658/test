FROM gitpod/workspace-full:latest

ARG DENO_VERSION=1.17.1
ARG HUGO_VERSION=0.91.2

RUN wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb

USER root

COPY --from=denoland/deno:bin-$DENO_VERSION /deno /usr/local/bin/deno
RUN apt install /tmp/hugo.deb