#!/bin/bash
docker build -t genevaja/myserver:nginx .
docker run --name part4 -it -p 80:81/tcp -p 443:443/tcp -d genevaja/myserver:nginx
