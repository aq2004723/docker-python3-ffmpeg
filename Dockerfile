FROM alpine:3

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add bash curl dumb-init python3 ffmpeg 
RUN mkdir $HOME/.pip
COPY pip.conf $HOME/.pip/pip.conf 

ENTRYPOINT ["dumb-init", "bash"]