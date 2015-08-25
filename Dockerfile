FROM alpine:3.2
RUN apk add --update ruby=2.2.2-r0 && rm -rf /var/cache/apk/*
RUN gem install sass --version '3.4.17' --no-ri --no-rdoc && \
    rm /usr/lib/ruby/gems/2.2.0/cache/*
