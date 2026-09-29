FROM teddysun/xray:latest

ENV PORT=8080
ENV UUID=00000000-0000-0000-0000-000000000000
ENV WSPATH=/udprelay

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
