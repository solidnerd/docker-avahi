docker avahi
============

[![](https://images.microbadger.com/badges/image/solidnerd/avahi.svg)](http://microbadger.com/images/solidnerd/avahi "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/solidnerd/avahi.svg)](https://microbadger.com/images/solidnerd/avahi "Get your own commit badge on microbadger.com")

## Quickstart

### Build the Image:

```bash
docker build --build-arg AVAHI_VERSION=$(cat VERSION) -t solinderd/avahi:$(cat VERSION) .
```

### Get initialize configuration:

```bash
docker create solidnerd/avahi:0.6.32
docker cp $(docker ps -ql):/etc/avahi .
docker rm $(docker ps -ql)
```

### 

2. Start the container 

```bash
docker run -d --net=host -v $(pwd)/avahi:/etc/avahi solidnerd/avahi:0.6.32
```

## Issues

If you have any issues feel free to create an [issue on GitHub](https://github.com/solidnerd/docker-avahi/issues)


