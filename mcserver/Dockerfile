# Use debian package from balena
FROM balenalib/raspberry-pi-debian:latest

#update container
RUN apt-get update -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y

#install openjdk
RUN apt-get install openjdk-8-jre -y

# Expose minecraft ports
EXPOSE 19132

# Create user
RUN mkdir /home/minecraft

# Copy server properties
ADD server.properties /home/minecraft/server.properties

# Volumes
VOLUME /minecraft_data /home/minecraft

# Set runtime workdir
WORKDIR /home/minecraft

# Fetch file
RUN curl -o nukkit-1.0-SNAPSHOT.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar

# Run start script
CMD [ "java -jar", "nukkit-1.0-SNAPSHOT.jar" ]
