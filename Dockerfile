FROM alpine
MAINTAINER e0148675@u.nus.edu
EXPOSE 8080
RUN apk update
RUN apk add python3
COPY index.html /tmp/index.html
COPY start.sh /tmp/start.sh
COPY dog.webp /tmp/dog.webp
USER 1000
CMD ["sh","/tmp/start.sh"]
