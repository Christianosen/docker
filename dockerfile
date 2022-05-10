ARG VERSION=alpine
FROM nginx:$VERSION
ARG VERSION
ENV TIMEZONE Europe/Paris
RUN apk update && apk upgrade && apk --update --no-cache add bash
EXPOSE 80
RUN echo "Version $VERSION" > index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]