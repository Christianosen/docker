ARG VERSION=3.15
FROM alpine:$VERSION as builder
ARG VERSION
RUN apk update && apk upgrade && apk --update --no-cache add bash
WORKDIR /opt
RUN echo "Version $VERSION" > messages.txt
CMD ["cat", "/opt/messages.txt"]