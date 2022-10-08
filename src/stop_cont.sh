#!/bin/bash
docker stop part4
docker rm $(docker ps -aq)
docker rmi genevaja/myserver:nginx
