#!/bin/bash

cd "$(dirname "$0")"

[ -z "$SONA_REPO_ID" ] && echo SONA_REPO_ID not set && exit 1

TASKS=publishAllPublicationsToMavenRepository

./gradlew -PsignPublications TASKS