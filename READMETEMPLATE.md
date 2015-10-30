![http://linuxserver.io](http://www.linuxserver.io/wp-content/uploads/2015/06/linuxserver_medium.png)

The [LinuxServer.io](https://www.linuxserver.io/) team brings you another quality container release featuring dependency update on startup, easy user mapping and community support. Be sure to checkout our [forums](https://forum.linuxserver.io/index.php) or for real-time support our [IRC](https://www.linuxserver.io/index.php/irc/) on freenode at `#linuxserver.io`.

# linuxserver/websync

Websync is a webui based rsync task manager, where tasks can be added, scheduled and maintained in a sane manner. With websync's great and intuitive user interface you can now easily set up and schedule backup tasks. [Websync](http://furier.github.io/websync)

## Usage

```
docker create --name=websync -v /etc/localtime:/etc/localtime:ro -v <path to data>:/config -e PGID=<gid> -e PUID=<uid>  -p 3000:3000 linuxserver/websync
```

**Parameters**

* `-p 3000` - webui port.
* `-v /etc/localtime` for timesync - *optional*
* `-v /config` - Where websync should store its config files
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

It is based on phusion-baseimage with ssh removed, for shell access whilst the container is running do `docker exec -it websync /bin/bash`.

### User / Group Identifiers

**TL;DR** - The `PGID` and `PUID` values set the user / group you'd like your container to 'run as' to the host OS. This can be a user you've created or even root (not recommended).

Part of what makes our containers work so well is by allowing you to specify your own `PUID` and `PGID`. This avoids nasty permissions errors with relation to data volumes (`-v` flags). When an application is installed on the host OS it is normally added to the common group called users, Docker apps due to the nature of the technology can't be added to this group. So we added this feature to let you easily choose when running your containers.

## Setting up the application 

<Insert a basic user guide here to get a n00b up and running with the software inside the container.> DELETE ME


## Updates

* Update the dependencies, simply  `docker restart websync`.
* To monitor the logs of the container in realtime `docker logs -f websync`.



## Versions

+ **dd.MM.yyyy:** This is the standard Version type now. 


