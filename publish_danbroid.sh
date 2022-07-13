#!/bin/bash

cd `dirname $0` 

./gradlew -PLOCAL_MAVEN_REPO=file://`pwd`/build/m2 publishAllPublicationsToMavenRepository 
