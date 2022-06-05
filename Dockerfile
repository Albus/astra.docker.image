FROM albus/astra:orel
ENV TERM=xterm-256color \
    DEBIAN_FRONTEND="teletype" \
    LANG="ru_RU.UTF-8" \
    LANGUAGE="ru_RU:en" \
    LC_ALL="ru_RU.UTF-8" \
    TZ="Europe/Moscow" \
    DISPLAY=unix:1
RUN apt-get -qqy update \
    && apt-get install -qqy xca
VOLUME /xca
WORKDIR /xca
CMD ["/usr/bin/xca"]