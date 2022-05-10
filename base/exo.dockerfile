ARG VERSION=3.15
FROM alpine:$VERSION

ARG VERSION
ENV MSG "Hello World!"
RUN apk update && apk upgrade && apk  --update --no-cache add bash
RUN echo "Version $VERSION"
ENTRYPOINT ["bash"]
CMD ["-c", "echo $MSG"]