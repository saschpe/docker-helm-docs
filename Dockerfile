#
# Helm-docs OCI container image with pre-installed Git based on Alpine Linux.
#
# Build and publish with default arguments:
#
#   $ ./scripts/build --push
#
# Build with custom arguments:
#
#   $ ./scripts/build --base 3.18
#

ARG base=1.14.2

FROM jnorwood/helm-docs:v${base}
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"
LABEL description="helm-docs and Git"

RUN apk add git
