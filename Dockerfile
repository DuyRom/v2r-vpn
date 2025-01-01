FROM v2fly/v2fly-core

RUN apk add --no-cache dos2unix gettext

COPY config.json.template /etc/v2ray/config.json.template
COPY entrypoint.sh /entrypoint.sh

RUN dos2unix /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
