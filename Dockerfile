FROM alpine:3.8 AS builder

RUN apk --update --no-cache add \
        php7 \
        php7-json \
        php7-mbstring \
        php7-phar \
        php7-tokenizer \
    && wget https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar \
        -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/bin

ENTRYPOINT ["/usr/bin/php-cs-fixer"]
