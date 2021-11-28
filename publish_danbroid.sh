#!/bin/bash
export JDK_16=/opt/jdk/jdk8/

./gradlew -PLOCAL_MAVEN_REPO=file:///mnt/files2/repo/ \
	publishAllPublicationsToMavenRepository  && syncmaven 

