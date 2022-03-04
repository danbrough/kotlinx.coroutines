#!/bin/bash
export JDK_16=/opt/jdk/jdk8/

#./gradlew -PLOCAL_MAVEN_REPO=file:///mnt/files2/repo/ \
#	publishAllPublicationsToMavenRepository  && syncmaven 

./gradlew publishLinuxArm64PublicationToMavenLocal publishLinuxArm32HfpPublicationToMavenLocal || exit 1

find /home/dan/.m2/repository/org/jetbrains/ -type f -name maven-metadata-local.xml | while read n; do 
	mv "$n" "$(echo $n | sed -e 's:maven-metadata-local\.xml:maven-metadata\.xml:g')"
done
rsync -avHSx ~/.m2/repository/org/jetbrains/ h1:/srv/https/maven/org/jetbrains/

