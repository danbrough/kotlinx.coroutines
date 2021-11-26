#!/bin/bash

./gradlew -PLOCAL_MAVEN_REPO=file:///mnt/files2/repo/ \
	publishAllPublicationsToMavenRepository  && syncmaven 

