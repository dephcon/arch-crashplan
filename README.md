Sickbeard
=========

Sickbeard - http://sickbeard.com/

Latest stable Sickbeard Git Master release from Arch Linux AUR using Packer to compile.

**Pull image**

```
docker pull binhex/arch-sickbeard
```

**Run container**

```
docker run -d -p 8081:8081 --name=<container name> -v <path for media files>:/media -v <path for data files>:/data -v <path for config files>:/config -v /etc/localtime:/etc/localtime:ro binhex/arch-sickbeard
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

```
http://<host ip>:8081
```