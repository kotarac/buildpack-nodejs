FROM buildpack-deps:jessie
MAINTAINER Stipe Kotarac "stipe@kotarac.net"

RUN set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends jq; \
  rm -rf /var/lib/apt/lists/*

COPY . /buildpack
RUN make install -C /buildpack

WORKDIR /src
ONBUILD COPY package.json /src/package.json
ONBUILD RUN buildpack-nodejs-build
ONBUILD COPY . /src
