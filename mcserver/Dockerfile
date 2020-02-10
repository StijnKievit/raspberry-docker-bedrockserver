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

#force creation of folder
RUN mkdir /home/minecraft

# Copy start shell file
COPY start.sh /home/minecraft

# Copy server properties
COPY server.properties /home/minecraft

# Volumes
VOLUME /minecraft_data /home/minecraft

# Set runtime workdir
WORKDIR /home/minecraft

# Run start script
CMD [ "/bin/bash", "/home/minecraft/start.sh" ]
