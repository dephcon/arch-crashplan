sickbeard
=========

Latest stable Sickbeard Git release from Arch Linux AUR using Packer to compile.

This is a Dockerfile for Sickbeard - http://sickbeard.com/

**Pull image**

```
docker pull binhex/arch-sickbeard
```

**Run container**

```
docker run -d -p 8081:8081 -p 8091:8091 --name=<container name> -v <path for media files>:/media -v <path for data files>:/data -v <path for config files>:/config -v /etc/localtime:/etc/localtime:ro binhex/arch-sickbeard
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

```
http://<host ip>:8081
```

or for SSL

```
https://<host ip>:8091
```
