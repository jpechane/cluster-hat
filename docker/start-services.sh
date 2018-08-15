#!/bin/bash
docker run -it -d --name docker-registry --restart unless-stopped -p 5000:5000 -v /data/docker-registry:/var/lib/registry-cache jpechane/chat-registry:latest
