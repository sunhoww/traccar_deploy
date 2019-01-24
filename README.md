# traccar_deploy

Containerized services for deploying traccar to production

## Development

### 1. Setup files

All `.sample` in _/traccar_ need to be copied in place and replace with proper content.

### 2. Environment Variables

Optionally set **MOUNTPOINT_VOLUME** to a path for docker volumes.

### 3. Start proxy container

This step is not necessary if proxy is not required or is handle externally.

Otherwise, startup `traefik`.

```sh
docker-compose -f traefik/development.yml up -d
```

### 4. Start app stack

Start `traccar` and `mysql` containers.

```sh
docker-compose -f traccar/development.yml up -d
```

### 5. Access site

If using `traefik`, find `traccar` at [http://traccar.docker.localhost](http://traccar.docker.localhost).
