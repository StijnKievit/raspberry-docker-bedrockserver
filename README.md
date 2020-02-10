Docker image for a minecraft server on the raspberry pi based on [NukkitX](https://github.com/NukkitX/Nukkit).
===

I created this project because it couldn't run the NukkitX build on my raspberry since it is on an older architecture ARM6 and the NukkitX project requires at least an ARM7+ processor. However, I found that the project works fine if you just install the openjdk packages for debian (ARM) and run the [SNAPSHOT jar file](https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar) by   Nukkit. So that is what this docker project will do.
