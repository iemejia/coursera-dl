FROM python:3-alpine

# Install requirements
RUN apk add --no-cache g++ libffi-dev openssl-dev

RUN pip install coursera-dl
CMD ["coursera-dl"]
