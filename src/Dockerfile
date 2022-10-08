FROM ubuntu:20.04
WORKDIR /server
COPY ./server/server.c /server
COPY ./server/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./server/start.sh /server
RUN useradd -ms /bin/bash newuser && usermod -G root newuser && apt-get update && apt-get install -y gcc nginx spawn-fcgi libfcgi-dev && chmod 777 /server/start.sh && rm -rf /var/lib/apt/lists
USER newuser
USER 0
CMD /server/start.sh && sleep infinity
