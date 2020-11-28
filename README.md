
# unifi-docker-launcher
![sanity](https://github.com/maximkir/unifi-docker-launcher/workflows/sanity/badge.svg)

unifi-docker-launcher is a docker-compose stack for the [unifi network controller](https://unifi-network.ui.com/#unifi).

### Usage

Start the comtroller in the background:
```sh
$ ./unifi_controller.sh start
```

Stop the controller:
```sh
$ ./unifi_controller.sh stop
```

Restart the controller:
```sh
$ ./unifi_controller.sh restart
```

Tail server logs:
```sh
$ ./unifi_controller.sh log
```

### Tech

unifi-docker-launcher uses a [docker image](https://hub.docker.com/r/linuxserver/unifi-controller) created by the [LinuxServer.io](https://www.linuxserver.io/) team.
