FROM python:3-alpine

# Install requirements
RUN set -x && \
    apk --update add --virtual build-dependencies curl python-dev g++ libffi-dev openssl-dev && \
    pip install coursera-dl && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/*

CMD ["coursera-dl"]
