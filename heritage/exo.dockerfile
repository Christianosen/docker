ARG VERSION=3.15
FROM alpine:$VERSION as builder
ARG VERSION
RUN apk update && apk upgrade && apk --update --no-cache add bash
RUN echo "Version $VERSION" > /messages.txt
FROM alpine:$VERSION
WORKDIR /opt
COPY --from=builder /messages.txt /opt/new_messages.txt
CMD ["cat", "/opt/new_messages.txt"]