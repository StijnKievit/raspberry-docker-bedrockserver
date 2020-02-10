#!/bin/bash

#fetch file
curl -o nukkit-1.0-SNAPSHOT.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar

#start mcserver
java -jar nukkit-1.0-SNAPSHOT.jar
