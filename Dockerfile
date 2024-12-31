FROM v2fly/v2fly-core

ENV V2RAY_PORT=80
ENV V2RAY_PATH=/v2ray
ENV V2RAY_HOST=example
ENV V2RAY_ID=cdfd3020-750a-4f52-9919-1bcf0f5c469e

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
