FROM alpine
MAINTAINER e0148675@u.nus.edu
EXPOSE 8080
RUN apk update
COPY app/index.html /tmp/index.html
COPY app/start.sh /tmp/start.sh
USER 1000
CMD ["sh","/tmp/start.sh"]
