docker avahi
============

[![](https://images.microbadger.com/badges/image/solidnerd/avahi.svg)](http://microbadger.com/images/solidnerd/avahi "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/solidnerd/avahi.svg)](https://microbadger.com/images/solidnerd/avahi "Get your own commit badge on microbadger.com")

# Quickstart

## Get initialize configuration:

```bash
docker create --name avahi-config solidnerd/avahi:0.7
docker cp avahi-config:/etc/avahi .
docker rm avahi-config
```

### Disable DBus for starting the container
Edit your `avahi-daemon.conf` and set the following line.

```bash
enable-dbus=no
```
# Start the container 

```bash
docker run -d --net=host -v $(pwd)/avahi:/etc/avahi solidnerd/avahi:0.7
```

## Build the image

```bash
docker build --build-arg AVAHI_VERSION=$(cat VERSION) -t solinderd/avahi:$(cat VERSION) .
```

## Issues

If you have any issues feel free to create an [issue on GitHub](https://github.com/solidnerd/docker-avahi/issues)


