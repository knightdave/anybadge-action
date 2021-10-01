FROM python:3.9.7-alpine3.14
RUN apk add --no-cache bash==5.1.4-r0
COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt
RUN python3 -m pip install --no-cache-dir -r /requirements.txt

WORKDIR /workdir

ENTRYPOINT ["/entrypoint.sh"]

LABEL \
    maintainer="knightdave <13086223+knightdave@users.noreply.github.com>" \
    org.label-schema.description="anybadge github action" \
    org.label-schema.name="anybadge-action" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/knightdave/anybadge-action" \
    org.label-schema.usage="https://github.com/knightdave/anybadge-action/blob/main/README.md" \
    org.label-schema.vcs-url="https://github.com/knightdave/anybadge-action" \
    org.label-schema.vendor="knightdave"
