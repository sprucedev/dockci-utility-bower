FROM alpine:3.2
RUN apk add --update nodejs=0.12.2-r0 && rm -rf /var/cache/apk/*
RUN npm install -g bower@1.5.2 && \
    rm -rf /tmp/npm-* /root/.npm

RUN adduser --disabled-password --home /work work
USER work
WORKDIR /work

CMD ["bower", "install"]
