[![Actions Status](https://github.com/winterssy/SSR-Docker/workflows/Publish%20Docker/badge.svg)](https://github.com/GIS-Hacker/SSR-Docker/actions)

## docker-compose uasge

```yml
version: "3.6"

services:
  ssr:
    image: docker.pkg.github.com/gis-hacker/ssr-docker/ssr-docker:master
    container_name: ssr
    restart: unless-stopped
    ports:
      - 80:80
    volumes:
      - ./app/config.json:/app/config.json:ro
    networks:
      - ssr-net

networks:
  ssr-net:
```
