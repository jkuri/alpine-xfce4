FROM alpine:edge

ENV DISPLAY :99

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk add --no-cache ca-certificates curl openssl sudo xvfb x11vnc xfce4 faenza-icon-theme bash \
    && adduser -h /home/alpine -s /bin/bash -S -D alpine && echo -e "alpine\nalpine" | passwd alpine

USER alpine
WORKDIR /home/alpine

RUN mkdir -p /home/alpine/.vnc && x11vnc -storepasswd alpine /home/alpine/.vnc/passwd

COPY entry.sh /entry.sh

CMD [ "/bin/bash", "/entry.sh" ]
