# docker_tor <a href='https://github.com/padhi-homelab/docker_tor/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_tor/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/tor'><img src='https://img.shields.io/docker/image-size/padhihomelab/tor/latest?label=size%20%5Blatest%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>
<a href='https://hub.docker.com/r/padhihomelab/tor'><img src='https://img.shields.io/docker/image-size/padhihomelab/tor/testing?label=size%20%5Btesting%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [tor] Docker image, based on [Alpine Linux].

|        386         |       amd64        |       arm/v6       |       arm/v7       |       arm64        |      ppc64le       |       s390x        |
| :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: |
| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |


## Usage

```
docker run --detach \
           -v /path/to/etc/tor:/config \
           -v /path/to/var/lib/tor:/var/lib/tor \
           -v /path/to/var/log/tor:/var/log/tor \
           #-p <any exposed ORPort / DirPort etc.>
           -it padhihomelab/tor
```

Runs a `tor` relay using the configuration from `/path/to/etc/tor/torrc`.

_<More details to be added soon>_


[Alpine Linux]: https://alpinelinux.org/
[tor]:          https://www.torproject.org/
