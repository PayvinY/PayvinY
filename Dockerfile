FROM alpine:latest
RUN apk update && apk upgrade
RUN apk add --no-cache netcat-openbsd
copy  web_server.sh /web_server.sh
copy index.html /index.html
RUN chmod 700 /web_server.sh
CMD ["sh", "/web_server.sh"]

