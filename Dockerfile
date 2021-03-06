FROM alpine:3.16

# install packages
RUN apk upgrade --no-cache \
        && apk add --no-cache \
        postfwd \
        s6 setpriv

# add the custom configurations
COPY rootfs/ /

# default postfwd port
EXPOSE 10045/tcp

CMD [ "/entrypoint.sh" ]

