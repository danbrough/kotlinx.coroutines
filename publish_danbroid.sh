#!/bin/bash

./gradlew -PLOCAL_MAVEN_REPO=file:///mnt/files2/cache/repo/ publishAllPublicationsToMavenRepository && syncmaven 
