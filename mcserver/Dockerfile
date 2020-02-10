# Use debian package from balena
FROM balenalib/raspberry-pi-debian:latest

#update container
RUN apt-get update -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y

#install openjdk
RUN apt-get install openjdk-8-jre -y

# Create user
RUN useradd -ms /bin/bash minecraft

# Expose minecraft ports
EXPOSE 19132

# User and group to run as
USER minecraft

# Copy start shell file
ADD start.sh /home/minecraft

# make executable
RUN chmod +x /home/minecraft/start.sh

# Copy server properties
ADD server.properties /home/minecraft

# Volumes
VOLUME /minecraft_data /home/minecraft

# Set runtime workdir
WORKDIR /home/minecraft

#test
CMD ["/bin/bash", "ls -l"]

# Run command
CMD ["/bin/bash", "start.sh"]
