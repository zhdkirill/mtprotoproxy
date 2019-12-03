FROM alpine:3.10

RUN adduser tgproxy -u 10000 -D

RUN apk update \
 && apk add --no-cache python3 py3-cryptography ca-certificates libcap

RUN apk update \
 && apk add gcc musl-dev linux-headers python3-dev make libffi-dev openssl-dev g++ ca-certificates libtool m4 libuv-dev automake autoconf \
 && pip3 install --upgrade pip \
 && pip3 install uvloop \
 && apk del gcc musl-dev linux-headers python3-dev make libffi-dev openssl-dev g++ python3-tests python3-doc openssl-dev openssl-doc make linux-headers libffi-dev g++ libc-dev musl-dev libc6-compat musl-dbg gcc mpc1 mpfr3 gmp pkgconfig libstdc++ libgcc

RUN chown -R tgproxy:tgproxy /home/tgproxy
RUN setcap cap_net_bind_service=ep /usr/bin/python3.7

COPY mtprotoproxy.py config.py /home/tgproxy/

USER tgproxy

WORKDIR /home/tgproxy/
CMD ["python3", "mtprotoproxy.py"]
