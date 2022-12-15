FROM primovist/alpine-glibc
ARG SNELL_URL=https://dl.nssurge.com/snell/snell-server-v4.0.0-linux-amd64.zip
LABEL maintainer="shoyuf" \
         org.label-schema.name="snell-server"
 ENV LANG=C.UTF-8
 ENV PORT=
 ENV PSK=
 ENV OBFS=
 COPY Entrypoint.sh /usr/bin/
 RUN wget --no-check-certificate -O snell.zip $SNELL_URL && \
     unzip snell.zip && \
     rm -f snell.zip && \
     chmod +x snell-server && \
     mv snell-server /usr/bin/ && \
     chmod +x /usr/bin/Entrypoint.sh
 ENTRYPOINT ["Entrypoint.sh"]
