FROM binhex/arch-base
MAINTAINER binhex

# install application
#####################

# update package databases for arch
RUN pacman -Sy --noconfirm

# run packer to install application
RUN packer -S sickbeard-git --noconfirm

# docker settings
#################

# map /config to host defined config path (used to store configuration from app)
VOLUME /config

# map /data to host defined data path (used to store data from app)
VOLUME /data

# map /media to host defined media path (used to read/write to media library)
VOLUME /media

# expose port for http
EXPOSE 8081

# set permissions
#################

# change owner
RUN chown -R nobody:users /opt/sickbeard

# set permissions
RUN chmod -R 775 /opt/sickbeard

# add conf file
###############

ADD sickbeard.conf /etc/supervisor/conf.d/sickbeard.conf

# run supervisor
################

# run supervisor
CMD ["supervisord", "-c", "/etc/supervisor.conf", "-n"]
