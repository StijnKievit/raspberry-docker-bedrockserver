# Use debian package from balena
FROM balenalib/raspberry-pi-debian-openjdk:latest

#command
RUN apt-get update -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y

# Create minecraft user
RUN useradd --user-group \
            --shell /usr/sbin/nologin \
            minecraft

# Ports
EXPOSE 19132

# User and group to run as
USER minecraft:minecraft

#copy files over
COPY ./mcserver /home/minecraft

# Volumes
VOLUME /minecraft_data /home/minecraft

# Set runtime workdir
WORKDIR /home/minecraft

#run command
CMD ["/bin/bash", "start.sh"]
