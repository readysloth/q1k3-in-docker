FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

ADD ./* /

RUN apt update && apt install -y build-essential \
                                 php \
                                 npm \
                                 advancecomp

RUN ./build.sh

ENTRYPOINT php -S 0.0.0.0:80

