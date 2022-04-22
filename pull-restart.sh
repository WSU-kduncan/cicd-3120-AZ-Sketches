#!/bin/bash

# Kill old running container (To clear port host for the new image)
docker stop azzy
docker system prune -f

# Pull image host
docker pull azsketches/dockerhubproject:1.0

# Run new image
docker run -d --name azzy --rm -p 8080:80 azsketches/dockerhubproject:1.0
