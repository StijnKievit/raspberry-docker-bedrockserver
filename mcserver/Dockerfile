# Use debian package from balena
FROM balenalib/raspberry-pi-debian:latest

#update container
RUN apt-get update -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y

#install openjdk
RUN apt-get install openjdk-8-jre -y

# Create minecraft user
RUN useradd --user-group \
            --shell /usr/sbin/nologin \
            minecraft

# Expose minecraft ports
EXPOSE 19132

# User and group to run as
USER minecraft:minecraft

# Copy start shell file
ADD ./start.sh /home/minecraft/

# Copy server properties
ADD ./server.properties /home/minecraft/

# Volumes
VOLUME /minecraft_data /home/minecraft/

# Set runtime workdir
WORKDIR /home/minecraft/

#test
CMD ["/bin/bash", "ls -l"]

# Run command
CMD ["/bin/bash", "start.sh"]
