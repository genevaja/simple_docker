#!/bin/bash
gcc /server/server.c -lfcgi -o /server/server
spawn-fcgi -p 8080 /server/server
service nginx start
