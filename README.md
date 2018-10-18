# infra
Portable systems infrastructure for laklak.

## Configuration
This stack contains all components of the `laklak` systems architecture, and is configured for local development by default. This means that all hostnames are suffixed by `-dev.laklak.chat`, which in turn means that you'll have to add the following entries in your hosts file:

```
127.0.0.1 monitor-dev.laklak.chat
```

## Running
``` bash
$ docker-compose up -d
```

## Monitoring
This stack is bundled with a Portainer installation pre-configured to watch and manage the local Docker installation.

By default, use the following credentials to login:

| Username | Password |
|----------|----------|
| admin | admin |

## TODO
- HTTPS support
- Add more information
